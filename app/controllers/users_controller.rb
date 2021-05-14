class UsersController < ApplicationController
  
  def login
    user = User.find_by(username: params[:username])
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
