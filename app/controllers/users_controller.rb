class UsersController < ApplicationController

	before_action :authenticate_user!

  def team
  	@users = User.all.order('created_at ASC')
  end

  def profile
    @user = User.find(params[:id])
  end
  
end
