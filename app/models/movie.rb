class Movie < ApplicationRecord
	belongs_to :screen
	has_many :customers
	# has_many :users

	validates :name, presence:true, uniqueness:true

end
