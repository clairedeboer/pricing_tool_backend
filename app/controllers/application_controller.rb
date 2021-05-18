class ApplicationController < ActionController::Base
  skip_forgery_protection

  def authenticate
    @current_user=User.last
  end
  
end
