class CreatePeopleTable < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first
      t.string :last
      t.date :dob
      t.string :email
      t.string :phone
      t.timestamps
    end
  end
end
