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
  	@technology = Technology.new(technology_params)
  	if @technology.save
  		redirect_to technologies_path
  	else
  		render :new
  	end
  end

  #DELETE /technologies/:id
  def destroy
  	@technology = Technology.find(params[:id])
  	@technology.destroy
  	redirect_to technologies_path
  end

  def edit 
    @technology = Technology.find(params[:id])
  end

  #PUT technologies/:id
  def update
    @technology = Technology.find(params[:id])
    if @technology.update(technology_params)
      redirect_to technologies_path
    else
      render :edit
    end
  end

  private

  def technology_params
    params.require(:technology).permit(:name,:description,:version,:link)
  end


end
