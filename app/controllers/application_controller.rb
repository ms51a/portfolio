class ApplicationController < ActionController::Base
    #def current_user
       # @current_user ||= User.find_by(id: session[:user_id])
    #end
    #helper_method :current_user

  before_action :configure_permitted_parameters, if: :devise_controller? 
    def after_sign_login_for(resource)
      home_after_login_path
    end
  private
      
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:name])
    end
  end
