class AddCharacterIdToPictures < ActiveRecord::Migration[7.1]
  def change
    add_column :pictures, :character_id, :integer
    add_index :pictures, :character_id
  end
end
