class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  def authenticate_inviter!
    if current_user.role == "Developer"
              redirect_to root_path, :alert => "Access Denied! Only Manager Can Add New Developer"
    end
    super
  end

  include PublicActivity::StoreController
  

	protected

	def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :password_confirmation,:gender, :title, :bio, :address, :mobile_number, :fb_link, :ig_link, :twitter_link, :github_link, :in_link, :image_link])
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:name, :email])
  end

end
