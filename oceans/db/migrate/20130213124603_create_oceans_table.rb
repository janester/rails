class CreateOceansTable < ActiveRecord::Migration
  def change
    create_table :oceans do |t|
      t.string :name
      t.text :image
      t.float :area
      t.float :percent_surf
      t.timestamps
    end
  end
end
