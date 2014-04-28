class MedicationsController < ApplicationController
  before_filter :find_patient, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @medication = @patient.medications.new
  end
  
  def create
    @medication = @patient.medications.new medication_params
    if @medication.save
      redirect_to patient_path(@patient)
  end

  def edit
    @medication = Medication.find params[:id]
  end

  def update
    @medication.update_attributes medication_params
    redirect_to patient_path(@patient)
  end

  def destroy
    @medication.delete
    redirect_to patient_path(@patient)
  end

private 
  def find_medication
    @medication = Medication.find params[:patient_id]
  end

  def medication_params
    params.require(:medication).permit(:medication_name, :description, :amount_dispensed, :frequency)
end
