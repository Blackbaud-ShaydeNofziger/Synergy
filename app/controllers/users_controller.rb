class UsersController < ApplicationController

	# For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

	# POST
	def volunteerAtEvent
	end

	# GET
	def id
    name = params[:name]
    #@ev = Event.find_by name: params[:name]
    #return render json: @ev.id
    for user in User.all
      if user.name == name
        break
      end
    end
    return render json: user.id
	end

	#GET
	def show
		id = params[:id]
		@user = User.find_by_id(id)
		render json: @user
	end

	# POST
	def update
    id = params[:id]
    @user = User.find_by_id(id)

	end

	# POST
	def deactivate
	end

	# GET
	def volunteerRecord
	end

end
