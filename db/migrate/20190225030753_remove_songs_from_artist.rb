class RemoveSongsFromArtist < ActiveRecord::Migration[5.2]
  def change
    remove_column :artists, :songs, :string
  end
end
