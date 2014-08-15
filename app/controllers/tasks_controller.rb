class TasksController < ApplicationController
	before_action :require_user
  before_action :require_manager, only: [:new]

  def new
    @task = Task.new
  end

  def create
	  @task = Task.new(task_params)
	  @task.submitter = current_user

    if @task.save
      flash[:notice] = "Your task was created"
      redirect_to root_path
    else
      render :new
    end
  end

  def preview
	  @task = Task.find(params[:id])
  end

  def show
	  @task = Task.find(params[:id])
    @comments = @task.comments
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update_status(params[:task][:status])
    if @task.update(task_params)
      flash[:notice] = "Your plan was added"
    end
    redirect_to task_path(@task)
  end

  private

  def task_params
    params.require(:task).permit!
  end
end