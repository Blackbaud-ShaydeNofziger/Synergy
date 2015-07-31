class OrganizationsController < ApplicationController

	# POST
	def create
		org = Organizaton.new(name:    params[:name],
													website: params[:message],
													phone:   params[:phone],
													info:    params[:info],
													address: params[:info])
		org.save
		render nothing: true, status: 200
	end

	# GET
	def show
		id = params[:id]
		@org = Organzation.find_by_id(id)
		render json: @org
	end

	# POST
	def update
	end

	# POST
	def deactivate
	end

end
