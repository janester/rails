class CreateCodesTable < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :hex
      t.string :sym
      t.timestamps
    end
  end
end
