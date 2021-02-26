class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :update_allowed_parameters, if: :devise_controller?

    def require_user_logged_in!
        redirect_to new_user_session_path, alert: "Musisz być zalogowany" if !user_signed_in?
    end

    protected
    def update_allowed_parameters
        devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:email, :name, :lastname, :role, :password)}
        devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:email, :name, :lastname, :role, :password,
            :current_password )}

    end

    
end
