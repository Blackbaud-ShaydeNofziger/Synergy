class OrganizationsController < ApplicationController
	protect_from_forgery with: :null_session

	# POST
	def create

		if(params.has_key?(:name))
		  org = Organization.new(name:    params[:name],
		                        website: params[:message],
  													phone:   params[:phone],
  													info:    params[:info],
  													address: params[:info])
  		org.save
			#not sure if this should be true
  		render nothing: true, status: 200
		else
			render nothing: true, status: 500
		end
	end
	
	# GET
	def id
		name = params[:name]
		@org = Organization.find_by name: params[:name]
		return render json: @org.id
	end

	# GET
	def show
		id = params[:id]
		@org = Organization.find_by_id(id)
		return render json: @org
	end

	# POST
	def update
	end

	# POST
	def deactivate
	end

end
