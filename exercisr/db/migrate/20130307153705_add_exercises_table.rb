class AddExercisesTable < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :activity
      t.integer :amount
      t.string :unit
      t.date :completed_on
      t.integer :user_id
      t.timestamps
    end
  end
end
