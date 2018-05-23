class TasksController < ApplicationController
  def create
    hash = make_task_hash(params[:task])
    @task = Task.create(hash)

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

  private

  def make_task_hash(params)
    task_hash = Hash.new
    params.each do |k,v|
      task_hash[k.to_sym] = v
    end
    
    return task_hash
  end
end