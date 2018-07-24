class TasksController < ApplicationController
  def tasks
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @new_task = Task.new
    @new_task.title = params[:title]
    @new_task.details = params[:details]
    @new_task.save
    redirect_to "/tasks"
  end

  def change
    @update_task = Task.find(params[:id])
    @update_task.title = params[:title]
    @update_task.details = params[:details]
    @update_task.completed = params[:done] ? true : false
    @update_task.save
    redirect_to "/tasks"
  end

  def delete
    delete_task = Task.find(params[:id])
    delete_task.destroy
    redirect_to "/tasks"
  end

end
