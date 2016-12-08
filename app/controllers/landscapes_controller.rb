class LandscapesController < ApplicationController
  before_action :find_continent

  def index
    @landscapes = Landscape.all
  end

  def show
    @landscape = Landscape.find(params[:id])
  end

  def new
    @landscape = Landscape.new
  end

  def edit
    @landscape = Landscape.find(params[:id])
  end

  def create
    @landscape = Landscape.new(landscape_params)
    @landscape.continent_id = @continent.id

    if @landscape.save
      redirect_to continent_landscapes_path(@continent)
    else
      render 'new'
    end
  end

  def update
    @landscape = Continent.find(params[:id])

    if @landscape.update
      redirect_to continent_landscapes_path
    else
      render 'edit'
    end
  end

  def destroy
    @landscape = Continent.find(params[:id])

    if @landscape.destroy
      redirect_to continent_landscapes_path(@continent)
    else
      render 'show'
    end
  end

  private

  def landscape_params
    params.require(:landscape).permit(:name, :terrain, :description)
  end

end
