class RatingsController < ApplicationController
	def index
		@ratings = Rating.all
	end 

	def create
		puts params[:movie_id].to_i
		checked = false
		if params[:liked]
			checked = true
		end
		@rating = Rating.new(user_id: current_user.id, movie_id: params[:movie_id].to_i, thumbs_up: checked)
		@rating.save
		#redirect_to rating_path(user_id: current_user.id)
		redirect_to ratings_path(user_id: current_user.id)
	end 

	def show
		@rating = Rating.where("user_id" == params[:user_id].to_i)
		@id = params[:id].to_i
	end
end