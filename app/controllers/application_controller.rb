class ApplicationController < ActionController::Base
  skip_forgery_protection
  before_action :authenticate

  def authenticate
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    begin
      @decoded = JsonWebToken.decode(header)
      @current_user = User.find(@decoded[:user_id])
    rescue ActiveRecord::RecordNotFound => error
      render json: { errors: error.message }, status: :unauthorized
    rescue JWT::DecodeError => error
      render json: { errors: error.message }, status: :unauthorized
    end
  end

end
