class OrganizationsController < ApplicationController

	# POST
	def create

		if(params.has_key?(:name))
		  org = Organizaton.new(name:    params[:name],
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
	def show
		id = params[:id]
		@org = Organization.find_by_id(id)
		render json: @org
	end

	# POST
	def update
	end

	# POST
	def deactivate
	end

end
