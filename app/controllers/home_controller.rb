class HomeController < ApplicationController
	def index
		@hello = APIS::Itunes.new.itunes_api_response(params[:search])
	end
end
