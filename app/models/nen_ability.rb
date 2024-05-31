class NenAbility < ApplicationRecord
    self.primary_key = 'NenAbilityID'
    has_many :nen_ability_relations, foreign_key: 'NenAbilityID'
    has_many :characters, through: :nen_ability_relations
end
