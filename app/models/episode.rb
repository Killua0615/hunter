class Episode < ApplicationRecord
    self.primary_key = 'EpisodeID'
    has_many :episode_relations, foreign_key: 'EpisodeID'
    has_many :characters, through: :episode_relations
end
