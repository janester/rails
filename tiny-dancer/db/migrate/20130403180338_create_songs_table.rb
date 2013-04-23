class CreateSongsTable < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :track
      t.string :filename
      t.timestamps
    end
  end
end
