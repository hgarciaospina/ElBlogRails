class PublicMeetsController < ApplicationController
  layout 'public'

  def new
  	@meet = Meet.new
  end

  def create_meet
  	@meet = Meet.new name: params[:name], meeting: params[:meeting], subject: params[:subject]
  	if @meet.save
  		redirect_to :back, notice: 'the  meeting was solicited and send the admin,.... '
  	end
  end
end
