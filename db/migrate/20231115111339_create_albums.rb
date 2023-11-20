class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|

      t.string :title
      t.integer :year
      t.integer :song_count
      t.string :author


      t.timestamps
    end
  end
end
