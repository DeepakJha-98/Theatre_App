class Theatre < ApplicationRecord
	has_many :customers
	has_many :employees
	has_many :screens
	# has_many :users

	validates_associated :screens, uniqueness: true
end
