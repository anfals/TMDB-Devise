class RecommendationsController < ApplicationController

	def show
		@client = TmdbClient.new
		@id = current_user.id
		puts(@id)
		@my_ratings = Rating.where("user_id = ? AND thumbs_up = ?", @id, true)
		dict = {}
		#@client.get_similar_movies(808).each {|m| puts m.title, m.id}
		#228326, 10191, 862, 278927, 11224, 127380, 335797, 
		@my_ratings.each do |rating|
			movie = Movie.where("id = ?", rating.movie_id).take
			puts(movie.movie_db_id)
			similar_movies = @client.get_similar_movies(movie.movie_db_id)
			similar_movies.each do |m|  
				if dict.key?(m.title)
					dict[m.title] += 1
				else 
					dict[m.title] = 1
				end
			end
		end

		@recommended_movies = dict.sort_by { |_, v| -v }[0..5]
	end
end

