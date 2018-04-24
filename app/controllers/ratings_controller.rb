class RatingsController < ApplicationController
	def index
		@ratings = Rating.all
	end 

	def create
		@rating = Rating.new(user_id: params[:user_id], movie_id: params[:movie_id], thumbs_up: params[:thumbs_up])
		@rating.save
		#redirect_to rating_path(user_id: current_user.id)
		redirect_to ratings_path(user_id: 1)
	end 

	def show
		@rating = Rating.where("user_id" == params[:user_id].to_i)
		@id = params[:id].to_i
	end
end