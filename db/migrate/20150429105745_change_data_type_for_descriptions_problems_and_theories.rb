class ChangeDataTypeForDescriptionsProblemsAndTheories < ActiveRecord::Migration
  def change
  	change_column :theories, :description, :text
  	change_column :problems, :description, :text
  end
end
