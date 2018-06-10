class AddMuscleTypeColumnToExercise < ActiveRecord::Migration[5.2]
  def change
    add_column :exercises, :muscle_type, :integer
  end
end
