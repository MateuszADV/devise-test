class ApplicationController < ActionController::Base
    before_action :set_locale
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

    private
        def default_url_options
            { locale: I18n.locale }
        end

        def set_locale
            I18n.locale = extract_locale || I18n.default_locale
        end

        def extract_locale
            parsed_locale = params[:locale]
            I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
        end
end
