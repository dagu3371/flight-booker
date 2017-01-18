class FlightsController < ApplicationController
	def index
		@from = params[:from]
		@flights = Flight.search(params)
		@flight_options = Airport.all.map{|u| [u.name]}
		@dates = Flight.all.map{|u| [u.start]}
		@passenger = (1..4).map { |p| [  p.to_s + " passenger".pluralize(p), p] }
	end

end
