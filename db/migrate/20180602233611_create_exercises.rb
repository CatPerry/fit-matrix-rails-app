class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :description
      t.integer :reps
      t.integer :sets

      t.timestamps
    end
  end
end
