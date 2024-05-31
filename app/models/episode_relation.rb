class EpisodeRelation < ApplicationRecord
    belongs_to :character, foreign_key: 'CharacterID'
    belongs_to :episode, foreign_key: 'EpisodeID'
end
