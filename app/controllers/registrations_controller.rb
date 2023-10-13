class RegistrationsController < Devise::RegistrationsController
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user! 
    before_action :redirect_unless_admin, only: [:new, :create]
    skip_before_action :require_no_authentication
    protect_from_forgery with: :exception
  
    protected
  
    def configure_permitted_parameters
      added_attrs = %i[ email password password_confirmation remember_me name phone role ]
  
      devise_parameter_sanitizer.permit :sign_up, keys: %i[email password password_confirmation name phone]
      devise_parameter_sanitizer.permit :sign_in, keys: %i[email password remember_me]
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end
  
    def redirect_unless_admin
      unless current_user.admin?
        flash[:alert] = "You must be an admin to do that."
        redirect_to root_path
      end
    end

    def sign_up(resource_name, resource)
        true
    end
  end