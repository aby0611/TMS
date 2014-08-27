class PagesController < ApplicationController
	before_action :require_user

  def index
    @title = Task.get_list_title(params["filter"])
    @tasks = Task.get_by_filter(params["filter"], current_user)
  end

	def front
	end
end