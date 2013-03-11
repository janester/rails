class CreateStocksTable < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.decimal :bought_price
      t.integer :quantity
      t.integer :user_id
      t.timestamps
    end
  end
end
