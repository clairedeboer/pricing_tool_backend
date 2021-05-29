class SessionsController < ApplicationController
  before_action :authenticate, except: [:create]

  def create
    user = User.find_by(username: params[:session][:username])
    user && user.authenticate(params[:session][:password]) 
    if (user)
      # set encoded JWT token and include on response
      binding.pry
      render json: user
    end
  end

  def destroy
  end

  private 

  def session_params
    params.require(:session).permit(:username, :password)
  end 
end
