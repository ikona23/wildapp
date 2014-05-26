class Post < ActiveRecord::Base
  validates_presence_of :title, :description
  attr_accessible :title, :description, :urgency, :budget, :owner, :parking, :quote, :how_did_you_here_about_us, :parking, :publish_date, :user_id, :category_ids
  belongs_to :user
  has_and_belongs_to_many :categories
end
