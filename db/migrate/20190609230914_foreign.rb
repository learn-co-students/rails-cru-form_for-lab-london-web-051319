class Foreign < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :genre_id, :integer
    add_column :songs, :artist_id, :integer
  end
end
