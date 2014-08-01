module ApplicationHelper
	def display_datetime(dt)
    dt.strftime("%m/%d/%Y %l:%M%P %Z") # 03/14/2013 9:09pm
  end

  def select_owner_options(selected=nil)
    options_for_select(User.all.map { |user| [user.english_name, user.id]}, selected)
  end
end
