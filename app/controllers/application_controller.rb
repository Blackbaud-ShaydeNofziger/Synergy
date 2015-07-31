class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # GET /
  def main
  	render :file => 'public/parent.html'
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
  
end
