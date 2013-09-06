Contacts::Application.routes.draw do
  class FormatMatcher
    attr_accessor :mime_type

    def initialize(format)
      @mime_type = Mime::Type.lookup_by_extension(format)
    end

    def matches?(request)
      request.format == mime_type
    end
  end

  resources :users, :except => :edit, :constraints => FormatMatcher.new(:json)
  root to: "static_pages#index"
  get '*foo', :to => 'static_pages#index', :constraints => FormatMatcher.new(:html)
  get '/', :to => 'static_pages#index', :constraints => FormatMatcher.new(:html)
end
