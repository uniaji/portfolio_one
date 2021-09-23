class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    protect_from_forgery

    def set_current_user
        @current_user = User.find_by(id: session[:user_id])
    end

    def after_sign_in_path_for(resource)
        root_path
    end

    def after_sign_out_path_for(resource)
        new_user_session_path
    end

    private
        def move_to_signed_in
            unless user_signed_in?
            redirect_to  'users_sign_in_path'
            end
        end

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
            devise_parameter_sanitizer.permit(:account_update, keys: [:username, :image, :profile])
        end

end
