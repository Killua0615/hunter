class CharactersController < ApplicationController
  def new
    @character = Character.new
    @affiliations = Affiliation.all
    @nen_abilities = NenAbility.all
    @episodes = Episode.all
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      redirect_to character_url, notice: 'Character was successfully created.'
    else
      @affiliations = Affiliation.all
      @nen_abilities = NenAbility.all
      @episodes = Episode.all
      flash.now[:alert] = @character.errors.full_messages.join(", ")
      render :new
    end
  end

  def show
    @character = Character.find(params[:id])
  end

  private

  def character_params
    params.require(:character).permit(:name, :debut_episode, :affiliation_id, :image, nen_ability_ids: [], episode_ids: [])
  end
end
