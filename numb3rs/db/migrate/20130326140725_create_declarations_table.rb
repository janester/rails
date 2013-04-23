class CreateDeclarationsTable < ActiveRecord::Migration
  def change
    create_table :declarations do |t|
      t.string :url
      t.text :whole
      t.timestamps
    end
  end
end
