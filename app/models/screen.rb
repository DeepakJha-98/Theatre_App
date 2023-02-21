class Screen < ApplicationRecord
	has_one :movie
	has_many :customers, through: :movie
	belongs_to :theatre

	# validates_associated :movie,uniqueness:true
	validates :screen_id, presence: true, uniqueness: true

end
