class DashboardController < ApplicationController

  before_action :authenticate_user!

  def index
    @projects = Project.all
    @tasks = Task.all
    @issues = Issue.all
    @works = Work.all
  end
  
end
