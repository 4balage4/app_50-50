class TasksController < ApplicationController
  def index
    @tasks = policy_scope(Task)
  end

  def show
    @task = Task.find(params[:id])
    authorize @task
  end

  def new
    @task = Task.new
    authorize @task
  end

  def create
    @task = Task.new(task_params)
    @task.user = current_user
    @task.household = current_user.household
    authorize @task
    @task.save!
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:name, :points, :duration, :type, :comments, :due_date, :status, :assigned_to, :category)
  end
end
