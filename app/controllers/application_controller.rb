class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  /*
  def register
	if (!params.has_key?('firstName') or !params.has_key?('lastName') or !params.has_key?('email') or !params.has_key?('avatar') or !params.has_key?('phone') or !params.has_key?('password'))
		# error
	end
	# create a user in database
	createdUser = User.create(fName: param['firstName'], lName: param['lastName'], email: param['email'], avatar: param['avatar'], phone: param['phone'], bio: nil, active: true)
	# login user
	
  end
  
  def deactivate
	# edit user in database
	# logout user
  end
  
  def login
	if (
	# login user
  end
  
  def search
	# ?
  end
  */
end
