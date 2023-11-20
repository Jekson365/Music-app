class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|

      t.string :title
      t.integer :start_date
      t.string :description

      t.timestamps
    end
  end
end
