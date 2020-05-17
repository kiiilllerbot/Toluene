class IssuesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_issue, only: [:show, :edit, :update, :destroy]

  def index
    @issues = Issue.all.order('created_at DESC').where(["title like ?", "%#{params[:search]}%"]).paginate(page: params[:page], per_page: 28)
  end

  def show
  end

  def new
    @issue = current_user.issues.build
  end

  def edit
  end

  def create
    @issue = current_user.issues.build(issue_params)

    respond_to do |format|
      if @issue.save
        format.html { redirect_to @issue, notice: 'Issue was successfully created.' }
        format.json { render :show, status: :created, location: @issue }
      else
        format.html { render :new }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @issue.update(issue_params)
        format.html { redirect_to @issue, notice: 'Issue was successfully updated.' }
        format.json { render :show, status: :ok, location: @issue }
      else
        format.html { render :edit }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @issue.destroy
    respond_to do |format|
      format.html { redirect_to issues_url, notice: 'Issue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_issue
      @issue = Issue.find(params[:id])
    end

    def issue_params
      params.require(:issue).permit(:title, :description, :status, :user_id, :task_id)
    end
end
