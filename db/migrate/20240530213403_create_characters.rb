class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.integer :characterID
      t.string :name
      t.string :DebutEpisode
      t.integer :AffiliationID

      t.timestamps
    end
  end
end
