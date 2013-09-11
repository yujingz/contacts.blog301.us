class StaticPagesController < ActionController::Base

  before_action :authenticate!

  def authenticate!
    authenticate_or_request_with_http_basic do |username, password|
      hashed_password = Digest::SHA2.hexdigest(ENV["password_salt"] + password)
      username == ENV["username"] && hashed_password == ENV["hashed_password"]
    end
  end

end
