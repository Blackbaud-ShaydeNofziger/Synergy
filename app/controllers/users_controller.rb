class UsersController < ApplicationController

	# For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
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
