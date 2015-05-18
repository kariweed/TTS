class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :animal
      t.boolean :favorite

      t.timestamps null: false
    end
  end
end
