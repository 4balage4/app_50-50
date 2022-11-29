class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    authorize @contact
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
    authorize @contact
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.household_id = current_user.household_id
    authorize @contact
    if @contact.save!
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
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :phone, :address)
  end

end
