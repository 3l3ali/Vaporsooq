class RemoveType2FromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :type, :integer
  end
end
