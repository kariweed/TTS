class AddValueToComments < ActiveRecord::Migration
  def change
    add_column :comments, :my_blog_id, :integer
  end
end
