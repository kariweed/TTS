class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :f_name
      t.string :l_name
      t.integer :table

      t.timestamps null: false
    end
  end
end
