class UsersController < ApplicationController
  def me
    user = @current_user
    render json: user
  end
  
  def signup
    user = User.create(user_params)
    if (user)
      token = JsonWebToken.encode(user_id: user.id)
      render json: { user: user, token: token }, status: :created
    else
      render json: { error: 'bad request' }, status: :bad_request
    end
  end

  private
  def user_params
    params.permit(:name, :username, :password, :is_admin)
  end
  
end
