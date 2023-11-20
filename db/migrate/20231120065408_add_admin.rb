class AddAdmin < ActiveRecord::Migration[7.0]
  def change
    add_column :authors,:admin,:boolean
  end
end
