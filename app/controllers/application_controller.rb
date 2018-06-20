class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :birthday, :username, :email, :password, :password_confirmation, :tel_one, :tel_two, :remember_me])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:first_name, :last_name, :birthday, :username, :email, :password, :remember_me])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :birthday, :username, :email, :password, :password_confirmation, :current_password, :tel_one, :tel_two])
  end

end
