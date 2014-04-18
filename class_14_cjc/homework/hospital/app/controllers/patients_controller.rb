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

private
  def patient_params
    params.require(:patient).permit(:name, :description)
  end
end
