class LocationsController < ApplicationController
  before_filter :find_location, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create location_params
    redirect_to root_path
  end

  def show
    @cohorts = @location.cohorts
  end

  def edit

  end

  def update
    @location.update_attributes location_params
    redirect_to root_path
  end

  def destroy
    @location.delete
    redirect_to root_path
  end
private
  def find_location
    @location = Location.find params[:id]
  end

  def location_params
    params.require(:location).permit(:city, :state)
  end
end
