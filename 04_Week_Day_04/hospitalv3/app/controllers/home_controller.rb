class HomeController < ApplicationController
  def index
    @institutions = Institution.all
    @patients = Patient.all
    @medications = Medication.all
  end
end
