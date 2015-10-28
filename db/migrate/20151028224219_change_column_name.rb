class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :foods, :type, :name
  end
end
