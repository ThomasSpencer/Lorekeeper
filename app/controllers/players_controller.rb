class PlayersController < ApplicationController
  before_action :find_story

  def index
    @players = Player.where("story_id = #{@story.id}")
  end

  def show

  end

  def new

  end

  def edit

  end

  def create

  end

  def update

  end

  def destroy

  end

  private

  def find_story
    @story = Story.find(params[:story_id])
  end
end
