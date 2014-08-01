class TasksController < ApplicationController
	def new
		@task = Task.new
	end

  def create
    binding.pry
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
  end

  private

  def task_params
    params.require(:task).permit!
  end
end