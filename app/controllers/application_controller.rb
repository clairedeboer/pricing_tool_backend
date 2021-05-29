class ApplicationController < ActionController::Base
  skip_forgery_protection
  before_action :authenticate

  def authenticate
    @current_user ||= session[:current_user_id] &&
      User.find_by(id: session[:current_user_id])
  end
  
end
