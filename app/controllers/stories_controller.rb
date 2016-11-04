class StoriesController < ApplicationController

  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
  end

  def new
    @story = Story.new
  end

  def edit
    @story = Story.find(params[:id])
  end

  def create
    @story = Story.new(story_params)
    @story.total_sessions = 0
    @story.save
  end

  def update
    @story = Story.find(params[:id])
    @story.update(story_params)
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
  end

  private

  def story_params
    params.require(:story).permit(:title, :total_players, :ruleset)
  end

end
