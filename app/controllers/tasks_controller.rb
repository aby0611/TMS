class TasksController < ApplicationController
	def new
		@task = Task.new
	end

	def create
		@task = Task.new(task_params)

    if @task.save
      flash[:notice] = "Your task was created"
      redirect_to root_path
    else
      render :new
    end
	end

	def show
		@task = Task.find(params[:id])
	end

	private

	def task_params
    params.require(:task).permit(:title)
  end

end