class ApplicationController < ActionController::Base
  skip_forgery_protection

  def authenticate
    @current_user ||= User.find_by(username: params["username"])
  end
  
end
