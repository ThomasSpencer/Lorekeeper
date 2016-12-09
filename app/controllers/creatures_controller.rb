class CreaturesController < ApplicationController
  before_action :find_landscape

  def index
    @creatures = Creature.all
  end

  def show
    @creature = Creature.find(params[:id])
  end

  def new
    @creature = Creature.new
  end

  def edit
    @creature = Creature.find(params[:id])
  end

  def create
    @creature = Creature.new(creature_params)
    @creature.landscape_id = @landscape.id

    if @creature.save
      redirect_to landscape_creatures_path(@landscape)
    else
      render 'new'
    end
  end

  def update
    @creature = Creature.find(params[:id])

    if @creature.update(creature_params)
      redirect_to landscape_creature_path(@landscape, @creature)
    else
      render 'edit'
    end
  end

  def destroy
    @creature = Creature.find(params[:id])

    if @creature.destroy
      redirect_to landscape_creatures_path(@landscape)
    end
  end

  private

  def creature_params
    params.require(:creature).permit(:name, :type, :size, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :abilities)
  end

end
