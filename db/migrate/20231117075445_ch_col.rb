class ChCol < ActiveRecord::Migration[7.0]
  def change
    remove_column :tickets,:user_id
    add_column :tickets,:author_id,:integer
  end
end
