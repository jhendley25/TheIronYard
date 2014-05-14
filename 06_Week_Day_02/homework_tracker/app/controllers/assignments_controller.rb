class AssignmentsController < ApplicationController
  before_filter :find_location
  before_filter :find_cohort
  before_filter :find_assignment, only: [:create_comment, :show, :edit, :update, :destroy]

  def index
    
  end
  
  def new
    @assignment = @cohort.assignments.new
  end

  def create
    @assignment = @cohort.assignments.create assignment_params
    redirect_to location_cohort_path(@location, @cohort)
  end

  def show
    @assignments = @cohort.assignments
    @create_comment = @assignment.comments.new 
  end

  def edit
    @assignment = Assignment.find params[:id]
  end

  def update
    @assignment.update_attributes assignment_params
    redirect_to location_cohort_assignment_path(@location, @cohort, @assignment)
  end

  def destroy
    @assignment.delete
    redirect_to location_cohort_assignment_path(@location, @cohort, @assignment)
  end

  def create_comment
    @create_comment = @assignment.comments.create create_comment_params
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
    @assignment = @cohort.assignments.find params[:id]
  end

  def assignment_params
    params.require(:assignment).permit(:title, :body)
  end

  def create_comment_params
    params.require(:comment).permit(:comment)
  end
end
