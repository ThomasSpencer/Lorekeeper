class PlanesController < ApplicationController
  before_action :find_story

  def index
    @planes = Plane.all
  end

  def show
    @plane = Plane.find(params[:id])
  end

  def new
    @plane = Plane.new
  end

  def edit
    @plane = Plane.find(params[:id])
  end

  def create
    @plane = Plane.new(planes_params)
    if @plane.save
      redirect_to story_planes_path(@story)
    else
      render 'new'
    end
  end

  def update
    @plane = Plane.find(params[:id])
    @plane.update(planes_params)
  end

  def destroy
    @plane = Plane.find(params[:id])
    if @plane.destory
      redirect_to story_planes_path
    end
  end

  private

  def planes_params

  end

end
