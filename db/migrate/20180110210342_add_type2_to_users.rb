class AddType2ToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :type, :integer, default: 0
  end
end
