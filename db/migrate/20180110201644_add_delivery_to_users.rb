class AddDeliveryToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :delivery, :boolean
  end
end
