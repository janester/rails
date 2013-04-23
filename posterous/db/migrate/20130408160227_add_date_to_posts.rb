class AddDateToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :posted, :date
  end
end
