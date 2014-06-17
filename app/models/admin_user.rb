class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible  :email, :password, :password_confirmation
  attr_accessible  :email, :password, :password_confirmation,
  # after_create { |admin| admin.send_reset_password_instructions }

  def password_required?
    new_record? ? false : super
  end
end
