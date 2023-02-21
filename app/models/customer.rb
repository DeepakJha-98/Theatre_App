class Customer < ApplicationRecord
	belongs_to :theatre
	belongs_to :movie
end
