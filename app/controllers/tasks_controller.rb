class TasksController < ApplicationController
  def index
    @tasks = policy_scope(Task)
  end

  def show
    @task = Task.find(params[:id])
    authorize @task
  end

  def new
    if params[:template_id]
      @template = Template.find(params[:template_id])
      @task = Task.new(name: @template.name, points: @template.points, duration: @template.duration, comments: @template.comments, type: @template.type, category: @template.category)
    else
      @task = Task.new
    end
    authorize @task
  end

  def create
    @task = Task.new(task_params)
    @task.user = current_user
    @task.household = current_user.household
    authorize @task
    if @task.save!
      redirect_to tasks_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @task = Task.find(params[:id])
    authorize @task
  end

  def update
    @task = Task.find(params[:id])
    authorize @task
    @task.update(task_params)
    if @task.save!
      redirect_to tasks_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def duplicate
    @task = Task.find(params[:id]).dup
    authorize @task
  end

  def destroy
    @task = Task.find(params[:id])
    authorize @task
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name, :points, :duration, :type, :comments, :due_date, :status, :assigned_to_id, :category_id)
  end
end
