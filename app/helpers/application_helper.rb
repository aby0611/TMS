module ApplicationHelper
	def display_datetime(dt)
    dt.strftime("%m/%d/%Y %l:%M%P")
  end

  def select_owner_options(selected=nil)
    options_for_select(current_user.members.map { |user| [user.english_name, user.id]}, selected)
  end

  def select_priority_options(selected=1)
    options_for_select(Priority.options, selected)
  end

  def select_importance_options(selected=5) #50%
    options_for_select(Importance.options, selected)
  end

  def select_status_options(selected=nil)
    options_for_select(Status.options(current_user), selected)
  end

  def select_progress_options(selected=0)
    options_for_select(Progress.options, selected)
  end

  def get_priority_name(index)
    Priority.options.index(index)
  end

  def get_importance_name(index)
    Importance.options.index(index)
  end

  def get_status_name(index)
    Status.get_key(index)
  end
end