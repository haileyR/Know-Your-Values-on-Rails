class User < ActiveRecord::Base
  has_secure_password
  validates :email, uniqueness: true

  has_many :user_values
  has_many :values, through: :user_values
  has_many :friendships
  has_many :friends, through: :friendships, class_name: 'User'

end
