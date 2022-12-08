class TasksController < ApplicationController
  def index
    @tasks = policy_scope(Task)
    if params[:query].present?
      sql_query = "tasks.name ILIKE :query OR categories.name ILIKE :query"
      @tasks = policy_scope(Task.joins(:category).where(sql_query, query: "%#{params[:query]}%"))
    else
      @tasks = policy_scope(Task)
    end
    #for bar chart:
    user_ids = current_user.household.users.pluck(:id)
    user_ids.delete(current_user.id)
    partner_id = user_ids.first
    all_tasks = Task.all
    # @user_tasks = current_user.tasks.where(done: true)
    @user_tasks = all_tasks.where(assigned_to: current_user.household.users.reject { |user| user.id == partner_id }[0]).and(all_tasks.where(done: true))
    @partner_tasks = all_tasks.where(assigned_to: current_user.household.users.reject { |user| user.id == current_user.id }[0]).and(all_tasks.where(done: true))
  end

  def show
    @task = Task.find(params[:id])
    authorize @task
  end

  def mark_as_done
    @task = Task.find(params[:id])
    authorize @task
    if @task.done = true
      @task.done = false
    else
      @task.done = true
    end
    @task.save!
    redirect_to tasks_path
  end

  def score
    user_ids = current_user.household.users.pluck(:id)
    user_ids.delete(current_user.id)
    partner_id = user_ids.first
    @tasks = Task.all
    # @user_tasks = current_user.tasks.where(done: true)
    @user_tasks = @tasks.where(assigned_to: current_user.household.users.reject { |user| user.id == partner_id }[0]).and(@tasks.where(done: true))
    @partner_tasks = @tasks.where(assigned_to: current_user.household.users.reject { |user| user.id == current_user.id }[0]).and(@tasks.where(done: true))
    @unassigned_tasks = Task.where(household_id: current_user.household_id).and(Task.where(assigned_to_id: nil))

    authorize @user_tasks
    authorize @partner_tasks
    authorize @unassigned_tasks
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
    if @task.save
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
      respond_to do |format|
        format.html { redirect_to tasks_path }
        format.text { render partial: "tasks/task", locals: {task: @task}, formats: [:html] }
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
    params.require(:task).permit(:name, :points, :duration, :type, :comments, :contact_id, :due_date, :status, :done, :assigned_to_id, :category_id)
  end
end
