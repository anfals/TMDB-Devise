class MoviesController < ApplicationController
	def index
		@movies = Movie.all
		@client = TmdbClient.new
	end 

	def new
	end 

	def create
		@client = TmdbClient.new
		@id = @client.movie_search_by_name(params[:q])
		Movie.create(["movie_db_id": @id])
		redirect_to show_path(id: @id)
	end 

	def show
		@client = TmdbClient.new
		@id = params[:id].to_i
		@cur_movie = Movie.where(movie_db_id: @id).first
	end



end
