class CreateMyBlogs < ActiveRecord::Migration
  def change
    create_table :my_blogs do |t|
      t.string :title
      t.string :author
      t.text :post

      t.timestamps null: false
    end
  end
end
