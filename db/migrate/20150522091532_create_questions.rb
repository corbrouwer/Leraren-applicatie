class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :scenario_id
      t.text :question
      t.integer :answer_id
      t.string :correct_answer
      t.integer :chapter_id

      t.timestamps null: false
    end
  end
end
