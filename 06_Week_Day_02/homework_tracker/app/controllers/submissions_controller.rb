class SubmissionsController < ApplicationController
  before_filter :find_location
  before_filter :find_cohort
  before_filter :find_assignment
  before_filter :find_submission, only: [:show, :edit, :update, :destroy]

  def index 
  end
  
  def new
    @submission = @assignment.submissions.new
  end

  def create
    @submission = @assignment.submissions.create submission_params.merge({user_id: current_user.id})
    redirect_to location_cohort_assignment_path(@location, @cohort, @assignment)
  end

  def show
    @submission = @assignment.submissions 
  end

  def edit
    @submission = Submission.find params[:id]
  end

  def update
    @submission.update_attributes submission_params
    redirect_to location_cohort_assignment_path(@location, @cohort, @assignment)
  end

  def destroy
    @submission.delete
    redirect_to location_cohort_assignment_path(@location, @cohort, @assignment)
  end

private
  def find_location
    @location = Location.find params[:location_id]
  end

  def find_cohort
    @cohort = Cohort.find params[:cohort_id]
  end

  def find_assignment
    @assignment = Assignment.find params[:assignment_id]
  end

   def find_submission
    @submission = @cohort.assignments.find params[:id]
  end

  def submission_params
    params.require(:submission).permit(
      :name,
      :user_id,
      :assignment_id,
      )
  end
end
