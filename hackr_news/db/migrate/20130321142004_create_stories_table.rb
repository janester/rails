class CreateStoriesTable < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name
      t.text :url
      t.timestamps
    end
  end
end
