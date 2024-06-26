class Character < ApplicationRecord
    self.primary_key = 'characterID'
    belongs_to :affiliation, foreign_key: 'AffiliationID'
    has_many :nen_ability_relations, foreign_key: 'CharacterID'
    has_many :nen_abilities, through: :nen_ability_relations
    has_many :episode_relations, foreign_key: 'CharacterID'
    has_many :episodes, through: :episode_relations
    has_one_attached :image

    before_create :set_character_id

  private

  def set_character_id
    self.characterID = Character.maximum(:characterID).to_i + 1
  end
end
