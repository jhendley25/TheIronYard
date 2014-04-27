class InstitutionsController < ApplicationController
  before_filter :find_institution, only: [:show, :edit, :update, :destroy]

  def index
    @institution = Institution.all 
  end

  def show
    @institution = Institution.all
  end

  def new
    @institution = Institution.new
  end
  
  def create
    @institution = Institution.create institution_params
    redirect_to institutions_path(@patient)
  end

  def edit
  end

  def update
    @institution.update_attributes institution_params
    redirect_to institutions_path(@patient)
  end

  def destroy
    @institution.delete
    redirect_to institutions_path(@patient)
  end

  private 
    def find_patient
      @institution = Institution.find params[:institution_id]
    end

    def institution_params
      params.require(:institution).permit(:name, :location)
    end
  end
end