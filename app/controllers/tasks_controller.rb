class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(params[:task])
    if @task.save
      ListTask.create(list_id: select_list(List.id), task_id: Task.last.id)
      redirect_to :root
    else
      redirect_to :root
    end
  end

  def destroy
     @task = Task.find (params[:id])
     @task.destroy
     redirect_to :root
  end
end

