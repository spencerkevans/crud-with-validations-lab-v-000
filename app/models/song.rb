class Song < ApplicationRecord
	validates :title, presence: true
	validates :release_year, uniqueness: true, presence: true, if: :released, numericality: { less_than_or_equal_to: 2020 }
	



end
