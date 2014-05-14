class SubmissionsController < ApplicationController
  before_filter :find_location
  before_filter :find_cohort
  before_filter :find_assignment
  before_filter :find_submission, only: [:create_comment, :show, :edit, :update, :destroy]

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
    @submissions = @assignment.submissions 
    @create_comment = @submission.comments.new 
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

  def create_comment
    @create_comment = @submission.comments.create create_comment_params
    redirect_to location_cohort_assignment_submission_path(@location, @cohort, @assignment, @submission)
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
    @submission = @assignment.submissions.find params[:id]
  end

  def submission_params
    params.require(:submission).permit(
      :name,
      :user_id,
      :assignment_id,
      links_attributes: [:id, :url, :_destroy]
      )
  end

  def create_comment_params
    params.require(:comment).permit(:comment)
  end
end
