class AddIsCustomerToUser < ActiveRecord::Migration
  def change
    add_column :users, :is_customer, :boolean
  end
end
