class AddIsVendorToUser < ActiveRecord::Migration
  def change
    add_column :users, :is_vendor, :boolean
  end
end
