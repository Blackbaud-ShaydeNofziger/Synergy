class UsersController < ApplicationController

	# POST
	def volunteerAtEvent
		@ID = params[:event_id]
		volunteerCount = Volunteer.count(:conditions => "eventID = @ID")
		render json: volunteerCount
	
	end

	#GET
	def show
		id = params[:id]
		@user = User.find_by_id(id)
		render json: @user
	end
	
	# POST
	def update
	end

	# POST
	def deactivate
	end

	# GET
	def volunteerRecord
	end

end
