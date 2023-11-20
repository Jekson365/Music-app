class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|

      t.string :title
      t.string :price
      t.string :author
      t.string :user_id

      t.timestamps
    end
  end
end
