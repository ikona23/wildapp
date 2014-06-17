class AddAssignedToIdColumnToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :assigned_to_id, :integer
  end
end
