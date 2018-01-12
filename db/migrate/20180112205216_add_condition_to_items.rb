class AddConditionToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :condition, :integer
  end
end
