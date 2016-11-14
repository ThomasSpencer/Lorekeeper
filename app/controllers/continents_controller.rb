class ContinentsController < ApplicationController
  before_action :find_plane

  def index
    @continetns = Continent.all
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
    @continent = Continent.new

    if @continent.save
      redirect_to stories_continents_path
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
    if @continent.destory
      redirect_to stories_continents_path
    end
  end
end
