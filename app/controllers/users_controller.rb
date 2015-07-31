class UsersController < ApplicationController

	# POST
	def volunteerAtEvent
	end

	# GET
	def id
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
