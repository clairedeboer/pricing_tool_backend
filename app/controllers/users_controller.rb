class UsersController < ApplicationController
  before_action :authenticate, only: [:me]
  
  def login
    user = User.first
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
    params.permit(:name, :username, :password)
  end
  
end
