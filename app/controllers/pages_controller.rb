class PagesController < ApplicationController
	before_action :require_user

	def front
    @owned_tasks = Task.where(owner: current_user)
    @report_tasks = Task.where(submitter: current_user)
	end

  def assigned_tasks
    @tasks = Task.where(status: "assign", owner: current_user)
  end

  def tasks_in_progress
    @tasks = Task.where(status: "accept", owner: current_user)
  end
end