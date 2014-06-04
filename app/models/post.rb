class Post < ActiveRecord::Base

  # validates_presence_of :description
  # attr_accessible :title, :description, :urgency, :budget, :owner, :parking, :quote, :how_did_you_here_about_us, :parking, :publish_date, :category_ids, :photo
  attr_accessible :title, :description, :urgency, :budget, :owner, :parking, :quote, :how_did_you_here_about_us, :parking, :publish_date, :category_ids, :photo

  belongs_to :user
  has_and_belongs_to_many :categories
  has_attached_file :photo

  validates_attachment_content_type :photo, :content_type => %w(image/jpeg image/jpg image/png image/gif)

end

