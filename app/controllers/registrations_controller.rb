class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:full_name, :avatar, :remote_avatar_url, :profile_bio, :about_me, :location, :education, :employment, :email, :password, :password_confirmation, :current_password)
  end
end