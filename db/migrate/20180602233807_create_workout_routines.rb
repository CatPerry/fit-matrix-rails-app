class CreateWorkoutRoutines < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_routines do |t|
      t.string :name

      t.timestamps
    end
  end
end
