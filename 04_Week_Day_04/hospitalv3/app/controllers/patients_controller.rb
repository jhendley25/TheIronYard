class PatientsController < ApplicationController
  before_filter :find_institution
  before_filter :find_patient, only: [:show, :edit, :update, :destroy, :waiting, :doctor, :xray, :surgery, :billpay, :leaving, :postop, :new_doctor, :create_doctor]
  
  def show
  end

  def new
    @patient = @institution.patients.new
  end

  def create
    @patient = @institution.patients.create patient_params
    redirect_to institution_path(@institution)
  end

  def update
    @patient.update_attributes patient_params
    redirect_to institution_path(@institution)
  end

  def destroy
    @patient.delete
    redirect_to institution_path(@institution)
  end

  def waiting
    @patient.go_to_waiting!
  end

  def doctor
    @patient.go_to_doctor!
    redirect_to institution_path(@institution)
  end

  def xray
    @patient.go_to_xray!
    redirect_to institution_path(@institution)
  end

  def surgery
    @patient.go_to_surgery!
    redirect_to institution_path(@institution)  
  end

  def billpay
    @patient.go_to_billpay!
    redirect_to institution_path(@institution)  
  end

  def leaving
    @patient.go_to_leaving!
    redirect_to postop_institution_patient_path(@institution,@patient)  
  end

  def postop 
  end

  def new_doctor
    @create_doctor = @patient.doctors.new
  end

  def create_doctor
    @create_doctor = @patient.doctors.create new_doctor_params
    redirect_to institution_patient_path(@institution,@patient)
  end
  private
    def find_institution
      @institution = Institution.find params[:institution_id]
    end

    def find_patient
      @patient = @institution.patients.find params[:id]
    end

    def patient_params
      params.require(:patient).permit(
        :name,
        :description,
        :workflow_state,
        )      
    end

    def new_doctor_params
      params.require(:doctor).permit(:name)
    end
end
