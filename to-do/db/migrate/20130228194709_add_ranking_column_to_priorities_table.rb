class AddRankingColumnToPrioritiesTable < ActiveRecord::Migration
  def change
    add_column :priorities, :ranking, :integer, :default => 1
  end
end
