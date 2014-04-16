class RolodexController < ApplicationController
  def new
    @rolodex = Rolodex.new
  end
  
end
