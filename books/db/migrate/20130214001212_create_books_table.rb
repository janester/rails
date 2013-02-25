class CreateBooksTable < ActiveRecord::Migration

  def change
    create_table :books do |t|
      t.string :title
      t.date :released
      t.string :publisher
      t.string :genre
      t.text :cover
      t.timestamps
    end
  end

end
