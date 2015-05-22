class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :a
      t.string :b
      t.string :c
      t.string :d

      t.timestamps null: false
    end
  end
end
