class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :message
      t.references :user, index: true, foreign_key: true
      t.boolean :resolved

      t.timestamps null: false
    end
  end
end
