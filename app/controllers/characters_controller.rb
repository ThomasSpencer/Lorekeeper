class CharactersController < ApplicationController
  before_action :find_city

  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def edit
    @character = Character.find(params[:id])
  end

  def create
    @character = Character.new(character_params)
    @character.city_id = @city.id

    if @character.save
      redirect_to city_characters_path(@city)
    else
      render 'new'
    end
  end

  def update
    @character = Character.find(params[:id])

    if @character.update(character_params)
      redirect_to city_character_path(@city, @character)
    else
      render 'edit'
    end
  end

  def destroy
    @character = Character.find(params[:id])

    if @character.destroy
      redirect_to city_characters_path(@city)
    end
  end

end
