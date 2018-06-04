class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.references :exercise, foreign_key: true
      t.references :workout_routine, foreign_key: true

      t.timestamps
    end
  end
end
