class TechnologiesController < ApplicationController
  
  #GET /technologies
  def index
  	@technologies = Technology.all
  end

  #GET /technologies/:id
  def show
  	@technology = Technology.find(params[:id])
  end
  #GET /technologies/new
  def new
  	@technology = Technology.new
  end
  #POST /technologies
  def create
  	@technology = Technology.new({ name: params[:technology][:name],
								  	description: params[:technology][:description],
								  	version: params[:technology][:version],
									link: params[:technology][:link]})
  	if @technology.save
  		redirect_to @technology
  	else
  		render :new
  	end
  end
  def destroy
  	@technology = Technology.find(params[:id])
  	@technology.destroy
  	redirect_to technologies_path
  end
  #PUT technologies/:id
  def update
    
  end


end
