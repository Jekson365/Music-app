class ChangeColumnAlbums < ActiveRecord::Migration[7.0]
  def change
    remove_column :albums,:author
    add_column :albums,:author_id,:integer
  end
end
