class RenameFoodExerciseTables < ActiveRecord::Migration
  def change
    rename_table :food, :foods
    rename_table :exercise, :exercises
  end
end
