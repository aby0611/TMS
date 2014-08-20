class PagesController < ApplicationController
	before_action :require_user

  def index
    @tasks = Task.all
    @tasks = Task.where(status: "accept", owner: current_user) if params["filter"] == "progress"
    @tasks = Task.where(status: "assign", owner: current_user) if params["filter"] == "assign"

  end

	def front
    @owned_tasks = Task.where(owner: current_user)
    @report_tasks = Task.where(submitter: current_user)
	end
end