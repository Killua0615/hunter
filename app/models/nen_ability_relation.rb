class NenAbilityRelation < ApplicationRecord
    belongs_to :character, foreign_key: 'CharacterID'
    belongs_to :nen_ability, foreign_key: 'NenAbilityID'
end
