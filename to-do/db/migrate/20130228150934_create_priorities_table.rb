class CreatePrioritiesTable < ActiveRecord::Migration
  def change
    create_table :priorities do |t|
      t.string :name
      t.string :color
      t.integer :user_id
      t.timestamps
    end
  end

end
