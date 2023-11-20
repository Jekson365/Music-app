class AddColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :username, :string
    add_column :authors, :password_digest, :string
    add_column :authors, :email, :string
  end
end
