class HomeController < ApplicationController

  def index
    @patients = Patient.all
    @institutions = Institution.all
    @medications = Medication.all
  end
end

