class ActivitiesController < ApplicationController

	before_action :authenticate_user!

	def index
  		@activities = PublicActivity::Activity.order("created_at DESC").where(owner_id: current_user, owner_type: "User").limit(15)
  	end

end
