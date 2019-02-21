class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :songs
      t.string :avatar

      t.timestamps
    end
  end
end
