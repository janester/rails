class AddPriceToSongsTable < ActiveRecord::Migration
  def change
    add_column :songs, :price, :decimal, :default => '0.00'
  end
end
