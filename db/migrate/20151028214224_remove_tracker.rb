class RemoveTracker < ActiveRecord::Migration
  def change
    drop_table :trackers
    add_column :users, :name, :string
  end
end
