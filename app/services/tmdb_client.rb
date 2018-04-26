require 'themoviedb'
class TmdbClient
	def initialize
		Tmdb::Api.key("aa1def2aece0e0e2dae99872a271abd9")
	end 

	def movie_search_by_name(name)
		ret = Tmdb::Movie.find(name)[0].id
		puts ret
		ret
	end 

	def get_similar_movies(id)
		#puts(Tmdb::Movie.popular.each {|m| puts m.title, m.id})
		puts(id)
		Tmdb::Movie.similar_movies(id)
	end

	def get_movie_title(id)
		Tmdb::Movie.detail(id)['original_title']
	end

	def get_movie_overview(id)
		Tmdb::Movie.detail(id)['overview']
	end

	def get_poster_path(id)
		poster_path = Tmdb::Movie.detail(id)['poster_path']
		default = "https://valmorgan.co.nz/wp-content/uploads/2016/06/default-movie-1-3.jpg"
		if poster_path == nil
			return default
		end
		return "https://image.tmdb.org/t/p/original" +	Tmdb::Movie.detail(id)['poster_path']
	end

end 
