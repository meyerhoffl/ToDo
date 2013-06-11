class ListsController < ApplicationController
  def index
    @list = List.new
    @lists = List.all
    @task = Task.new
    @tasks = Task.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create ( params[:list] )
    flash[:notice] = "Your list has been added"
    redirect_to :root
  end

  def show
    @list = List.find (params[:id])
  end

  def edit
     @list = List.find (params[:id])
  end

  def destroy
     @list = List.find (params[:id])
     @list.destroy
     redirect_to :root
  end

  def update
    @list = List.find(params[:id])
    if @list.update_attributes(params[:list])
      redirect_to(@list)
    else
      render "edit"
    end
  end

end