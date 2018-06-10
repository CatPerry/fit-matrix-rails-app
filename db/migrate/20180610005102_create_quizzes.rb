class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :name
      t.string :description
      t.string :option_1
      t.string :option_2
      t.string :option_3
      t.string :option_4

      t.timestamps
    end
  end
end
