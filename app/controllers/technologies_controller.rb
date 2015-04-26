class TechnologiesController < ApplicationController
  
  #GET /technologies
  def index
  	@technologies = Technology.all
  end

  #GET /technologies/:id
  def show
  	@technology = Technology.find(params[:id])
  end

end
