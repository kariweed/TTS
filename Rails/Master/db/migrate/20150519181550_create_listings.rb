class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :account_owner
      t.string :account_title
      t.integer :account_number
      t.integer :account_balance
      t.string :web_address

      t.timestamps null: false
    end
  end
end
