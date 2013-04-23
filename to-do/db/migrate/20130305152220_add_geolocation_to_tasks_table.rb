class AddGeolocationToTasksTable < ActiveRecord::Migration
  def change
    add_column :tasks, :address, :text
    add_column :tasks, :lat, :float, :default => 0
    add_column :tasks, :long, :float, :default => 0
  end
end
