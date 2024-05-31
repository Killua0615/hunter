class CreateEpisodes < ActiveRecord::Migration[7.1]
  def change
    create_table :episodes do |t|
      t.integer :EpisodeID
      t.string :EpisodeName

      t.timestamps
    end
  end
end
