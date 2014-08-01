class User < ActiveRecord::Base
	has_many :tasks
	has_secure_password validations: false
end