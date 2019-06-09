class CreateArtistsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :bio
    end

    create_table :songs do |t|
      t.string :name
    end

    create_table :genres do |t|
      t.string :name
    end
  end
end
