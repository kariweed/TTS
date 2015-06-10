class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.string :index
      t.string :about

      t.timestamps null: false
    end
  end
end
