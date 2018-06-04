class AddExerciseIdColumnToWorkoutRoutine < ActiveRecord::Migration[5.2]
  def change
    add_column :workout_routines, :exercise_id, :integer
  end
end
