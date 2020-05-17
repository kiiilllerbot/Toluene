class RegistrationsController < Devise::RegistrationsController
	def new
    	flash[:alert] = "registration_is_not_allowed"
    	redirect_to root_path
  	end
end