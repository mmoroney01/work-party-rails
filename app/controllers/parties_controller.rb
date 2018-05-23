class PartiesController < ApplicationController
  def create
  	time = params[:datetime]
  	place = params[:address]
  	user_id = current_user.id

  	party = Party.create(time: time, place: place, user_id: user_id)

  	redirect_to :action => "show", id: party.id
  end

  def show
  	render 'show'
  end

  def delete
  	@party = Party.find(params[:id])
  	@party.destroy
  end
end