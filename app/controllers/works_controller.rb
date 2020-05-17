class WorksController < ApplicationController

  before_action :authenticate_user!
  before_action :set_work, only: [:show, :destroy]

  def index
    @works = Work.all.order('created_at DESC').where(["title like ?", "%#{params[:search]}%"]).paginate(page: params[:page], per_page: 8)
  end

  def show
  end

  def new
    @work = current_user.works.build
  end


  def create
    @work = Work.new(work_params)

    respond_to do |format|
      if @work.save
        format.html { redirect_to @work, notice: 'Task was successfully submitted.' }
        format.json { render :show, status: :created, location: @work }
      else
        format.html { render :new }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @work.destroy
    respond_to do |format|
      format.html { redirect_to works_url, notice: 'Task was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    def set_work
      @work = Work.find(params[:id])
    end

    def work_params
      params.require(:work).permit(:title, :description, :user_id, :task_id)
    end
end
