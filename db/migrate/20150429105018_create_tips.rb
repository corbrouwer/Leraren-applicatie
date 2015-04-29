class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.integer :user_id
      t.integer :problem_id
      t.integer :theory_id
      t.text :description

      t.timestamps null: false
    end
  end
end
