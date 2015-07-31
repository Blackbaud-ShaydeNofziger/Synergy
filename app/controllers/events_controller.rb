class EventsController < ApplicationController
	protect_from_forgery with: :null_session

	# POST
	def create
		if(params.has_key?(:name))
		  ev = Event.new(name:    params[:name],
		                        startDate: params[:startDate],
								endDate: params[:endDate],
  								location:   params[:location],
  								info:    params[:info],
  								picture: params[:picture],
								maxVolunteers: params[:maxVolunteers],
								owner: params[:owner],
								active: true)
  		ev.save
		#not sure if this should be true
  		render nothing: true, status: 200
		else
			render nothing: true, status: 500
		end
	end
	
	# GET
	def id
		name = params[:name]
		#@ev = Event.find_by name: params[:name]
		#return render json: @ev.id
		for ev in Event.all
			if ev.name == name
				break
			end
		end
		return render json: ev.id
	end
		
	# GET
	def show
		id = params[:id]
		@ev = Event.find_by_id(id)
		return render json: @ev
	end
	
	# GET
	def showAll
		name = params[:name]
		@events = Event.all
		return render json: @events
	end
	
	# POST
	def update
	end
	
	# POST
	def deactivate
	end
	
end
