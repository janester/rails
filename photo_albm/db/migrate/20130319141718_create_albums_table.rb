class CreateAlbumsTable < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.timestamps
    end
  end
end
