class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :first_name
      t.string :last_name
      t.string :preferred_name
      t.boolean :personal, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
