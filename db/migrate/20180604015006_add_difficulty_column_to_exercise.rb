class AddDifficultyColumnToExercise < ActiveRecord::Migration[5.2]
  def change
    add_column :exercises, :difficulty, :integer
    add_column :exercises, :image, :string
    add_column :exercises, :bodypart, :string
  end
end
