class PatientsController < ApplicationController

def show
  @patient = Patient.find params[:id]
end

def new
  @patient = Patient.new
end

def create
  @patient = Patient.create patient_params
  redirect_to root_path
end

def edit
  @patient = Patient.find params[:id]
end

def update
  @patient = Patient.find params[:id]
  @patient.update_attributes patient_params
  redirect_to root_path
end

def waiting
  @patient = Patient.find params[:id]
  @patient.go_to_waiting!
  redirect_to root_path
end

def doctor
  @patient = Patient.find params[:id]
  @patient.go_to_doctor!
  redirect_to root_path
end

def xray
  @patient = Patient.find params[:id]
  @patient.go_to_xray!
  redirect_to root_path
end

def surgery
  @patient = Patient.find params[:id]
  @patient.go_to_surgery!
  redirect_to root_path
end

def billpay
  @patient = Patient.find params[:id]
  @patient.go_to_billpay!
  redirect_to root_path
end

def leaving
  @patient = Patient.find params[:id]
  @patient.go_to_leaving!
  redirect_to postop_patient_path(@patient)
end

def postop
  @patient = Patient.find params[:id]
end


private
  def patient_params
    params.require(:patient).permit(:name, :description)
  end
end
