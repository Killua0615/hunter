class CreateNenAbilities < ActiveRecord::Migration[7.1]
  def change
    create_table :nen_abilities do |t|
      t.integer :NenAbilityID
      t.string :AuraType
      t.string :NenAbilityName

      t.timestamps
    end
  end
end
