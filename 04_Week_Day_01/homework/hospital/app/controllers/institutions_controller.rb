class InstitutionsController < ApplicationController
  before_filter :find_institution, only: [:show, :edit, :update, :destroy]

  def show
    @patients = @institution.patients 
  end

  def new
    @institution = Institution.new
  end
  
  def create
    @institution = Institution.create institution_params
    redirect_to root_path
  end

  def edit
  end

  def update
    @institution.update_attributes institution_params
    redirect_to root_path
  end

  def destroy
    @institution.delete
    redirect_to root_path
  end

  private 
    def find_institution
      @institution = Institution.find params[:id]
    end

    def institution_params
      params.require(:institution).permit(:name, :location)
    end
end