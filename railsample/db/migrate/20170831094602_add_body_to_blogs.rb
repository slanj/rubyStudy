class AddBodyToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :body, :text
  end
end
