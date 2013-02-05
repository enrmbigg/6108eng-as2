class EventsController < ApplicationController
	def event
		@events = Event.all
	end
	def annoucment
		@annoucments = Annoucments.all		
	end
	def show
		@events = Event.find(params[:id])
	end
end
