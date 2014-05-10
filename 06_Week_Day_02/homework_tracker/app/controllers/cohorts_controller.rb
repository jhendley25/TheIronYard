class CohortsController < 
  before_filter :find_location
  before_filter :find_cohort, only: [:show, :edit, :update, :destroy]
  # def index
  # end

  def new
    @cohort = @location.cohorts.new
  end

  def create
    @cohort = @location.cohorts.create cohort_params
    redirect_to location_path(@location)
  end

  def show
    @assignments = @location.chort.assignments 
  end

  def edit
    @cohort = Cohort.find params[:id]
  end

  def update
    @cohort.update_attributes cohort_params
    redirect_to location_path(@location)
  end

  def destroy
    @cohort.delete
    redirect_to location_path(@location)
  end

private

  def find_location
    @location = Location.find params[:id]
  end

  def find_cohort
    @cohort = @location.cohort.find params[:id]
  end

  def cohorts_params
    params.require(:cohort).permit(:name)
  end
end
