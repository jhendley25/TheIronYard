class HomeController < ApplicationController
  def index
    @movies_in_list = Movie.all
  end
end
