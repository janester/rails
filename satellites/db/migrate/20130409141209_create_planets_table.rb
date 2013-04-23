class CreatePlanetsTable < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.string :name
      t.text :image
      t.timestamps
    end
  end
end
