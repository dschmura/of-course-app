class AddAccountToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :account_id, :integer
    add_index  :users, :account_id
  end
end