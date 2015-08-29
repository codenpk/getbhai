class EmergencyContactsController < ApplicationController
  before_action :set_emergency_contact, only: [:show, :update, :destroy]

  # GET /emergency_contacts
  # GET /emergency_contacts.json
  def index
    @emergency_contacts = EmergencyContact.all

    render json: @emergency_contacts
  end

  # GET /emergency_contacts/1
  # GET /emergency_contacts/1.json
  def show
    render json: @emergency_contact
  end

  # POST /emergency_contacts
  # POST /emergency_contacts.json
  def create
    @emergency_contact = EmergencyContact.new(emergency_contact_params)

    if @emergency_contact.save
      render json: @emergency_contact, status: :created, location: @emergency_contact
    else
      render json: @emergency_contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /emergency_contacts/1
  # PATCH/PUT /emergency_contacts/1.json
  def update
    @emergency_contact = EmergencyContact.find(params[:id])

    if @emergency_contact.update(emergency_contact_params)
      head :no_content
    else
      render json: @emergency_contact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /emergency_contacts/1
  # DELETE /emergency_contacts/1.json
  def destroy
    @emergency_contact.destroy

    head :no_content
  end

  private

    def set_emergency_contact
      @emergency_contact = EmergencyContact.find(params[:id])
    end

    def emergency_contact_params
      params.require(:emergency_contact).permit(:name, :contact_no, :email)
    end
end
