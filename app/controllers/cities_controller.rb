class CitiesController < ApplicationController
  before_action :find_continent

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  def new
    @city = City.new
  end

  def edit
    @city = City.find(params[:id])
  end

  def create
    @city = City.new(city_params)
    @city.continent_id = @continent.id

    if @city.save
      redirect_to continent_cities_path
    else
      render 'new'
    end
  end

  def update
    @city = City.find(params[:id])

    if @city.update(city_params)
      redirect_to continent_city_path(@continent)
    else
      render 'edit'
    end
  end

  def destroy
    @city = City.find(params[:id])

    if @city.destory
      redirect_to continent_cities_path(@continent)
    end
  end

  private

  def city_params
    params.require(:city).permit(:name, :population, :description)
  end

end
