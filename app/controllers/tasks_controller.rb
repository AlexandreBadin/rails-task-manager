class TasksController < ApplicationController

  # see all tasks --------------------> view (inndex.html.erb) 
  def index
    @tasks = Task.all
  end

  # show details abour one task ------> view (show.html.erb)
  def show
    @task = Task.find(params[:id])
  end

  # enter and create a new task ------> view (new.html.erb and redirect_to tasks_path)
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  # edit and update task -------------> view (edit.html.erb and redirect_to tasks_path)
  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  # delete a task --------------------> (no need view just delete and redirect_to tasks_path)
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

end
