class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # GET /
  def main
	render :file => 'public/parent.html', layout: 'layouts/application_synergy'
  end
  
  # POST 
  #def register
  #end
  # removed because is handled by Devise
  
  # POST
  def deactivate
  end
  
  # POST
  def search
  end
  
  def after_sign_in_path_for(user)
	return ''
  end
  
end
