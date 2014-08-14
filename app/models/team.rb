class Team < ActiveRecord::Base
  has_many :members, class_name: 'User'
  belongs_to :manager, foreign_key: 'manager_id', class_name: 'User'
end