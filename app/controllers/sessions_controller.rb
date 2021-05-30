class SessionsController < ApplicationController
  before_action :authenticate, except: [:create]

  def create
    user = User.find_by(username: params[:username])
    user && user.authenticate(params[:password]) 
    if (user)
      token = JsonWebToken.encode(user_id: user.id)
      render json: { user: user, token: token }, status: :ok
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end

end
