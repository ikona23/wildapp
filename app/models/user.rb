class User < ActiveRecord::Base


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :email, :password
  attr_accessible :email, :password, :is_customer, :is_vendor, :password_confirmation
  has_many :posts
  # scope :is_vendor, where (:is_vendor => nil)
  def user_type
  #   if self.is_vendor
  #     "vendor"
  #   else
  #     "customer"
  #   end

    self.is_vendor ? 'vendor' : 'customer'
  end
end
