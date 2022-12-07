class TemplatesController < ApplicationController
  def index
    @templates = policy_scope(Template)
    if params[:query].present?
      sql_query = "templates.name ILIKE :query OR categories.name ILIKE :query"
      @templates = policy_scope(Template.joins(:category).where(sql_query, query: "%#{params[:query]}%"))
    else
      @templates = policy_scope(Template)
    end
  end

  def show
    @template = Template.find(params[:id])
    authorize @template
  end

  def new
    if params[:task_id]
      @task = Task.find(params[:task_id])
      @template = Template.new(name: @task.name, points: @task.points, duration: @task.duration, comments: @task.comments, type: @task.type, category: @task.category)
    else
      @template = Template.new
    end
    authorize @template
  end

  def create
    # @task = Task.find(params[:task_id])
    @template = Template.new(template_params)
    @template.user = current_user
    @template.household = current_user.household
    authorize @template
    if @template.save!
      redirect_to templates_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @template = Template.find(params[:id])
    authorize @template
  end

  def update
    @template = Template.find(params[:id])
    authorize @template
    @template.update(template_params)
    if @template.save!
      redirect_to templates_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @template = Template.find(params[:id])
    authorize @template
    @template.destroy
    redirect_to templates_path
  end

  private

  def template_params
    params.require(:template).permit(:name, :points, :duration, :type, :comments, :due_date, :status, :assigned_to_id, :category_id)
  end
end
