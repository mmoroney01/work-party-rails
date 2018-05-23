class PartiesController < ApplicationController
  def index
    render 'index/index'
  end

  def create
  	datetime = params[:datetime]
  	place = params[:address]
  	user_id = current_user.id

  	@party = Party.create(time: datetime, place: place, user_id: user_id)

    respond_to do |f|
      f.html { redirect_to root_path }
      f.js
    end
  end

  def show
  	render 'show'
  end

  def delete
    @party = Party.destroy(params[:id])

    respond_to do |f|
      f.html { redirect_to root_path }
      f.js
    end
  end
end