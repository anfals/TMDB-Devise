class Movie < ApplicationRecord
	validates :movie_db_id, uniqueness: true
end
