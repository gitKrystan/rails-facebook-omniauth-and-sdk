class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    auth = request.env['omniauth.auth']
    @user = User.from_omniauth(auth)
    if @user.persisted?
      sign_in @user
      session['token'] = auth.credentials.token
      redirect_to facebook_path
      set_flash_message(:notice, :success, kind: 'Facebook') if is_navigational_format?
    else
      session['devise.facebook_data'] = auth
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end
