class PagesController < ApplicationController
	before_action :require_user

	def front
    @owned_tasks = Task.where(owner: current_user)
    @report_tasks = Task.where(submitter: current_user)
	end
end