class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|

      t.string :title
      t.datetime :date
      t.integer :ticket_price
      t.string :location
      t.integer :author_id

      t.timestamps
    end
  end
end
