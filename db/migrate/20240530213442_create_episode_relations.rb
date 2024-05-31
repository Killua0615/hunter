class CreateEpisodeRelations < ActiveRecord::Migration[7.1]
  def change
    create_table :episode_relations do |t|
      t.integer :CharacterID
      t.integer :EpisodeID

      t.timestamps
    end
  end
end
