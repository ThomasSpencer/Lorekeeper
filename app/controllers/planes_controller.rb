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
    @plane = Plane.new(plane_params)
    @plane.story_id = @story.id
    byebug
    if @plane.save
      redirect_to story_planes_path(@story)
    else
      render 'new'
    end
  end

  def update
    @plane = Plane.find(params[:id])

    if @plane.update(plane_params)
      redirect_to story_plane_path(@story)
    else
      render 'edit'
    end
  end

  def destroy
    @plane = Plane.find(params[:id])
    if @plane.destory
      redirect_to story_planes_path
    end
  end

  private

  def plane_params
    params.require(:plane).permit(:name, :colour, :description, :story_id)
  end

end
