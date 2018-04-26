class RatingsController < ApplicationController

	def create
		puts params[:movie_id].to_i
		checked = false
		if params[:liked]
			checked = true
		end
		@rating = Rating.new(user_id: current_user.id, movie_id: params[:movie_id].to_i, thumbs_up: checked)
		@rating.save
		#redirect_to rating_path(user_id: current_user.id)
		redirect_to recommendations_path
	end 

	def show
		@client = TmdbClient.new
		@ratings = Rating.where('user_id = ?', current_user.id)
		@movies = {}
		@ratings.each do |r|
			@movies[@client.get_movie_title(Movie.where('id = ?', r.movie_id).first.movie_db_id)] = r.thumbs_up
		end
	end
end
