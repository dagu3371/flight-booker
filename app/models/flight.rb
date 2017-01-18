class Flight < ApplicationRecord
	belongs_to :from_airport, class_name: "Airport"
	belongs_to :to_airport, class_name: "Airport"
	def self.search(params)
		if !params[:from].blank? && !params[:to].blank? 
			@leaving= Airport.where(name: params[:from]).first.id
			@arriving = Airport.where(name: params[:to]).first.id
			Flight.where(from_airport_id: @leaving, to_airport_id: @arriving, start: params[:dates]).first
		else
			Flight.none
		end
	end
end
