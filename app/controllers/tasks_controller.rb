class TasksController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.new(params[:task])
    if @task.save
      flash[:notice] = "Task created"
      redirect_to @list
    else
      flash[:error] = "Task not created"
      redirect_to @list
    end
  end

  def complete
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
    @task.completed = true
    @task.save
    redirect_to @list
  end

end
