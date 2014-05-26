class CreateCds < ActiveRecord::Migration
  def change
    create_table :cds do |t|
      t.string :name

      t.timestamps
    end
  end
end
