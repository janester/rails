class CreatePostsTable < ActiveRecord::Migration
  def change
    create_table :posts do |f|
      f.string :title
      f.string :author
      f.text :body
      f.timestamps
    end
  end
end
