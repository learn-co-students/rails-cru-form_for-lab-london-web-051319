class RemoveGenresColumnFromSongs < ActiveRecord::Migration[5.0]
  def change
    remove_column :songs, :genres_id, :string
  end
end
