class Task < ActiveRecord::Base
  has_many :comments
	belongs_to :submitter, foreign_key: 'submitter_id', class_name: 'User'
	belongs_to :owner, foreign_key: 'owner_id', class_name: 'User'

  def update_status(status)
    self.owner = self.submitter if status == "reject"
  end
end