class CreateTables < ActiveRecord::Migration
  def change
    create_table :exercise do |t|
      t.column :activity, :string
      t.column :calories, :integer

      t.timestamps
    end

    create_table :food do |t|
      t.column :type, :string
      t.column :calories, :integer

      t.timestamps
    end
  end
end
