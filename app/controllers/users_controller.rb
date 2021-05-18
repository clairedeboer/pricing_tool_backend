class UsersController < ApplicationController
  before_action :authenticate, only: [:me, :login]
  
  def login
    user = @current_user
    render json: user
  end

  def me
    user = @current_user
    render json: user
  end
  
  def signup
    user = User.create(user_params)
    render json: user
  end
  
  def logout
    user = User.find(params[:id])
    user.destroy
  end

  private
  def user_params
    params.permit(:name, :username, :password, :is_admin)
  end
  
end
