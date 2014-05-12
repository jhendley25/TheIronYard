class HomeController < ApplicationController

  def index
    @locations = Location.all 
    @cohorts = Cohort.all
    @assignments = Assignment.all
    @submissions = Submission.all 
  end
end
