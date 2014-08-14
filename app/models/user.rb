class User < ActiveRecord::Base
	has_many :tasks
  has_many :comments
  belongs_to :team, foreign_key: 'team_id', class_name: 'Team'
	has_secure_password validations: false

  def manager?
    Team.all.map(&:manager).include?(self)
  end
end