class CohortsController < ApplicationController
  
  def index
  end

  def new
    @cohorts = @location.cohorts.new
  end

  def create
    @cohorts = @location.cohorts.create cohorts_params
    redirect_to location_path(@location)
  end

  def show
    @cohorts = @location.cohorts cohorts_params
  end
end
