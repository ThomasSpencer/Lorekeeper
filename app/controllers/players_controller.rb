class PlayersController < ApplicationController
  before_action :find_story

  def index
    @players = Player.where("story_id = #{@story.id}")
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def edit

  end

  def create
    @player = Player.new(player_params)
    @player.story_id = @story.id

    if @player.save
      redirect_to story_players_path(@story)
    else
      render 'new'
    end
  end

  def update

  end

  def destroy

  end

  private

  def player_params
    params.require(:player).permit(:player_name, :character_name, :experience, :alignment, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :backstory)
  end
end
