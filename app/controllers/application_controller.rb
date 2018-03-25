class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:family_name, :given_name,:inage, :sex])
  
# 下記の1行を追加
    devise_parameter_sanitizer.permit(:account_update, keys: [:family_name, :given_name,:inage, :sex])
  end
end
