class TasksController < ApplicationController
  def create
  	guest_name = params[:task][:name]
  	desc = params[:task][:description]
  	party_id = params[:task][:party_id]

  	@task = Task.create(description: desc, guest_name: guest_name, party_id: party_id)

  	respond_to do |f|
      f.html { redirect_to action: "show" }
      f.js
    end
  end

  def delete
  	@task = Task.destroy(params[:id])

    respond_to do |f|
      f.html { redirect_to root_path }
      f.js
    end
  end
end