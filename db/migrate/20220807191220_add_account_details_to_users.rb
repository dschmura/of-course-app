class AddAccountDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :preferred_name, :string
    add_column :users, :nick_name, :string
  end
end
