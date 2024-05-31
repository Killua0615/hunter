class CreateNenAbilityRelations < ActiveRecord::Migration[7.1]
  def change
    create_table :nen_ability_relations do |t|
      t.integer :CharacterID
      t.integer :NenAbilityID

      t.timestamps
    end
  end
end
