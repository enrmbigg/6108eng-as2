class EventsController < ApplicationController
	def index
		@events = Event.all
		@annoucments = Annoucments.all
	end

	def show
		@event = Event.find(params[:id])
	end

	def new 
		@event = Event.new
	end

	def create
		@event = Event.new(params[:event])
  		@event.save
  		redirect_to events_path(@event)
	end
	
	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to events_path
	end
	
	def update
		@event = Event.find(params[:id])
		@event.update_attributes(params[:event])
		flash.notice = "Event '#{@event.title}' Updated!"
		redirect_to event_path(@event)
	end
	
	def edit
  		@event = Event.find(params[:id])
	end
end
