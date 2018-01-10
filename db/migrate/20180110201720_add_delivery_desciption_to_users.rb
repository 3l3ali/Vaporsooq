class AddDeliveryDesciptionToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :delivery_discription, :text
  end
end
