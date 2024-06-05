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
      if params[:character][:image].present?
        @character.image.attach(params[:character][:image])
      end
      redirect_to @character, notice: 'Character was successfully created.'
    else
      @affiliations = Affiliation.all
      @nen_abilities = NenAbility.all
      @episodes = Episode.all
      render :new
    end
  end

  def show
    @character = Character.find(params[:id])
  end

  private

  def character_params
    params.require(:character).permit(:name, :DebutEpisode, :AffiliationID, :image, nen_ability_ids: [], episode_ids: [])
  end
end
