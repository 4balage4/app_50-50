class ContactsController < ApplicationController
  def index
    @contacts = policy_scope(Contact)
    if params[:query].present?
      sql_query = "title ILIKE :query OR name ILIKE :query"
      @contacts = Contact.where(sql_query, query: "%#{params[:query]}%")
    else
      @contacts = policy_scope(Contact)
    end
  end

  def show
    @contact = Contact.find(params[:id])
    authorize @contact
  end

  def new
    @contact = Contact.new
    @contact.household_id = current_user.household_id
    authorize @contact
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.household_id = current_user.household_id
    authorize @contact
    if @contact.save
      redirect_to contacts_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @contact = Contact.find(params[:id])
    authorize @contact
  end

  def update
    @contact = Contact.find(params[:id])
    authorize @contact
    @contact.update(contact_params)
    redirect_to contacts_path
  end

  def destroy
    @contact = Contact.find(params[:id])
    authorize @contact
    @contact.destroy
    redirect_to contacts_path, status: :see_other
  end

  private

  def contact_params
    params.require(:contact).permit(:title, :name, :phone, :address)
  end
end
