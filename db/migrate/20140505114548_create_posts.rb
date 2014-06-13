class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.boolean :owner
      t.boolean :parking
      t.boolean :urgency
      t.integer :budget
      t.boolean :quote
      t.string :how_did_you_here_about_us
      t.date :publish_date
      t.integer :user_id

      t.timestamps
    end
  end
end
