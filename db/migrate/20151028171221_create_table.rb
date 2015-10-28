class CreateTable < ActiveRecord::Migration
  def change
    create_table :tracker do |t|
      t.column :name, :string

      t.timestamps
    end
  end
end
