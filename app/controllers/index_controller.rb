class IndexController < ApplicationController
  def index
  	@parties = Party.where(user_id: current_user.id)

  	render 'index'
  end
end