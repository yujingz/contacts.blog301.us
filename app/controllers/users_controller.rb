class UsersController < ApplicationController

  def index
    render json: User.order("id")
  end

  def show
    render json: User.find(params[:id])
  end

  #def edit
    #@user = User.find(params[:id])
  #end

  def update
    render json: User.find(params[:id]).update_attributes(user_params)
  end

private
  def user_params
    params.require(:user).permit(:tel, :email, :address, :birthday)
  end

end
