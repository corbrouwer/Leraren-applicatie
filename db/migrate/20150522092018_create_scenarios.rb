class CreateScenarios < ActiveRecord::Migration
  def change
    create_table :scenarios do |t|
      t.text :scenario

      t.timestamps null: false
    end
  end
end
