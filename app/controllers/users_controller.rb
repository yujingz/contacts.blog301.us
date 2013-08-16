class UsersController < ApplicationController
  before_filter :authenticate

  def index
    @users = User.order(:id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id]).update_attributes user_params
    redirect_to :action => :index
  end


private
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      digested_password = Digest::SHA2.hexdigest(ENV["admin_salt"] + password)
      p password
      p ENV["admin_salt"]
      p digested_password
      username == ENV["admin_username"] && digested_password = ENV["admin_digested_password"]
    end
  end

  def user_params
    params.require(:user).permit(:tel, :email, :address, :birthday)
  end
end
