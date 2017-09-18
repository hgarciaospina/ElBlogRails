class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #Layout for all controllers
  layout :layout_by_resource

  protected
  def layout_by_resource
  	if controller_name == 'sessions' || controller_name == 'registrations' || controller_name == 'passwords'
  		'public'
  	else
  	   'admin'		
  	end
  end

end