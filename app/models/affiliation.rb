class Affiliation < ApplicationRecord
    self.primary_key = 'AffiliationID'
    has_many :characters, foreign_key: 'AffiliationID'
end
