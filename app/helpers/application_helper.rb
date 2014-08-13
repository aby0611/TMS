module ApplicationHelper
	def display_datetime(dt)
    dt.strftime("%m/%d/%Y %l:%M%P") # 03/14/2013 9:09pm
  end

  def select_owner_options(selected=nil)
    options_for_select(User.all.map { |user| [user.english_name, user.id]}, selected)
  end

  def select_priority_options(selected=1)
    options_for_select(Priority.options, selected)
  end

  def select_importance_options(selected=5) #50%
    options_for_select(Importance.options, selected)
  end

  def get_priority_name(index)
    Priority.options.index(index)
  end

  def get_importance_name(index)
    Importance.options.index(index)
  end
end
