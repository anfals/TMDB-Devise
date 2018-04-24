class UsersController < ApplicationController
	def index
		@users = User.all

	end

	def create
		@user = User.new(username: params[:username], email:params[:email])
		#@id = current_user.id
		@user.save
		redirect_to users_path
	end 

	def show
		@user = User.where("id" == params[:id].to_i)
		@client = TmdbClient.new
		@id = params[:id].to_i
		@my_ratings = Rating.where("user_id = ? AND thumbs_up = ?", @id, true)
		dict = {}
		#@client.get_similar_movies(11).each {|m| puts m.title, m.id}
		@my_ratings.each do |rating|
			puts(rating.id)
			movie = Movie.where("id = ?", rating.movie_id).take
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
