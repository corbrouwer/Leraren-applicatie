class CreateTheories < ActiveRecord::Migration
  def change
    create_table :theories do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
