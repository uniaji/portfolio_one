class Users::SessionsController < Devise::SessionsController
    # before_action :configure_sign_in_params, only: [:create]

    def new
      super
      @user = User.new
    end

    def destroy
      super
      session[:keep_signed_out] = true
      flash[:notice] = "ログアウトしました"
    end

end
