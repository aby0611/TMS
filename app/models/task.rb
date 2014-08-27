class Task < ActiveRecord::Base
  has_many :comments
	belongs_to :submitter, foreign_key: 'submitter_id', class_name: 'User'
	belongs_to :owner, foreign_key: 'owner_id', class_name: 'User'

  class << self
    def get_by_filter(filter, user)
      if filter == "assign"
        self.where(status: "assign", owner: user)
      elsif filter == "progress"
        self.where(status: "accept", owner: user)
      elsif filter == "manager_evaluation"
        self.where(status: "evaluation", owner: user)
      elsif filter == "manager_assign"
        self.where(submitter: user)
      end
    end

    def get_list_title(filter)
      if filter == "assign"
        "Your New Tasks"
      elsif filter == "progress"
        "Tasks in progress"
      elsif filter == "manager_evaluation"
        "Tasks waiting for your evaluation"
      elsif filter == "manager_assign"
        "Tasks submitted by me"
      end
    end
  end

  def update_status(status)
    self.owner = self.submitter if status == "reject"
  end

  def update_progress(progress)
    self.progress = progress
    if progress >= 90
      change_to_evaluation
    end
  end

  private
  def change_to_evaluation
    self.status = "evaluation"
    self.owner = self.submitter
  end
end