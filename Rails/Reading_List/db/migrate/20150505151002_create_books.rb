class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :plot
      t.integer :rating
      t.boolean :complete

      t.timestamps null: false
    end
  end
end
