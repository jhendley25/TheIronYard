class MedicationsController < ApplicationController
  before_filter :find_institution
  before_filter :find_patient
  before_filter :find_medication, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @medication = @patient.medications.new
  end

  def create
    @medication = @patient.medications.create medication_params
    redirect_to institution_patient_path(@institution,@patient)
  end

  def edit
    @medication = Medication.find params[:id]
  end

  def update
    @medication.update_attributes medication_params
    redirect_to institution_patient_path(@institution, @patient, @medications)
  end

  def destroy
    @medication.delete
    redirect_to institution_patient_path(@institution, @patient)
  end

  private
    def find_patient
      @patient = Patient.find params[:patient_id]
    end

    def find_institution
      @institution = Institution.find params[:institution_id]
    end

    def find_medication
      @medication = @patient.medications.find params[:id]
    end

    def medication_params
      params.require(:medication).permit(
        :name,
        :description,
        :amount_dispensed,
        :frequency
      )
    end
end
