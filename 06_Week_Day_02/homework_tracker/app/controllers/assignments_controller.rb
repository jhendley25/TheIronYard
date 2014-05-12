class AssignmentsController < ApplicationController
  before_filter :find_location
  before_filter :find_cohort
  before_filter :find_assignment, only: [:show, :edit, :update, :destroy]

  def new
    @assignment = @cohort.assignment.new
  end

  def create
    @assignment = @location.assignment.create assignment_params
    redirect_to location_path(@location)
  end

  def show
    @assignment = @location.chort.assignments 
  end

  def edit
    @assignement = Assignment.find params[:id]
  end

  def update
    @assignment.update_attributes assignment_params
    redirect_to location_cohort_path(@location, @cohort, @assignment)
  end

  def destroy
    @cohort.delete
    redirect_to location_path(@location)
  end

private
  def find_location
    @location = Location.find params[:location_id]
  end

  def find_cohort
    @cohort = Cohort.find params[:cohort_id]
  end

  def assignment_params
    params.require(:assignment).permit(:title, :body)
  end
end
