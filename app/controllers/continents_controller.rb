class ContinentsController < ApplicationController
  before_action :find_plane

  def index
    @continents = Continent.all
  end

  def show
    @continent = Continent.find(params[:id])
  end

  def new
    @continent = Continent.new
  end

  def edit
    @continent = Continent.find(params[:id])
  end

  def create
    @continent = Continent.new(continent_params)
    @continent.plane_id = @plane.id

    if @continent.save
      redirect_to plane_continents_path
    else
      render 'new'
    end
  end

  def update
    @contient = Continent.find(params[:id])
    @continent.update(continent_params)
  end

  def destroy
    @continent = Continent.find(params[:id])
    if @continent.destroy
      redirect_to plane_continents_path
    end
  end

  private

  def continent_params
    params.require(:continent).permit(:plane_id, :name, :description)
  end
end
