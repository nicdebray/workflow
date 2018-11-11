class TasksController < ApplicationController
  before_action :task_find, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to task_path(@task)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @task = Task.update(task_params)
      redirect_to task_path(@task)
    else
      render :new
    end
  end

  def destroy
    if @task.destroy
      redirect_to tasks_path
    else
      render :new
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :assign_to)
  end

  def task_find
    @task = Task.find(params[:id])
  end
end
