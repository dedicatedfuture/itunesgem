class ArtistController < ApplicationController

	

	def search


	end
	def index
	end


	def show

		resp = APIS::Itunes.new.itunes_api_song(params[:fname])

		
		results = resp["results"]


		arr = []
		results.each do |value|
			arr.push({artist: value["artistName"], song: value["trackName"], link: value["trackViewUrl"]})
			
		end

		@searched = arr

	end

	def showmovie
		resp = APIS::Itunes.new.itunes_api_movie(params[:movie])
		arr = []
		results = resp["results"]

		results.each do |value|
			arr.push({name: value["trackName"], link: value["trackViewUrl"], preview: value["previewUrl"], description: value["longDescription"]})
		end
		@movies = arr

	end
	def showtvshow
		resp = APIS::Itunes.new.itunes_api_movie(params[:tvshow])
		results = resp["results"]
		arr = []

		
		results.each do |value|
			arr.push({name: value["trackName"], link: value["trackViewUrl"], preview: value["previewUrl"], description: value["shortDescription"]})
		end 
		@api = results
		@tvshows = arr
	end

end
