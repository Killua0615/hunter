# app/controllers/lists_controller.rb
class ListsController < ApplicationController
  def new
    @list = List.new
    @affiliations = Affiliation.all
    @nen_abilities = NenAbility.all
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list, notice: 'List was successfully created.'
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:list).permit(:image, :name, :debut_episode, :affiliation_id, nen_ability_ids: [])
  end
end
