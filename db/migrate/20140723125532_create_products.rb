class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :produkt_kod
      t.string :nazov
      t.string :farba
      t.integer :velkost
      t.integer :mnozstvo

      t.timestamps
    end
  end
end
