class CreateAffiliations < ActiveRecord::Migration[7.1]
  def change
    create_table :affiliations do |t|
      t.integer :AffiliationID
      t.string :Affiliation

      t.timestamps
    end
  end
end
