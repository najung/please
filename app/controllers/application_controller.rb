class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  
  def require_login
      unless user_signed_in?
      redirect_to "http://aftersquat.creatorlink.net/"
      end
  end

  def after_sign_in_path_for(resource)
        profile_path(current_user.username)
  end

  
  # profile_path(current_user.username) 
    
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :boll_model, :email, :password, :remember_me)}
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password, :remember_me)}
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :boll_model, :email, :password, :remember_me)}
  end
  

end
