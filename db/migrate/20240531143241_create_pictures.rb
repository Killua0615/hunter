class CreatePictures < ActiveRecord::Migration[7.1]
  def change
    create_table :pictures do |t|
      t.references :character, null: false, foreign_key: true
      t.timestamps
    end
    add_column :pictures, :image, :string
  end
end
