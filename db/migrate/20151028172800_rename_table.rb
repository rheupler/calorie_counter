class RenameTable < ActiveRecord::Migration
  def change
    rename_table :tracker, :trackers
  end
end
