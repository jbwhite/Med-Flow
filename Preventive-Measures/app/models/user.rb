class User < ActiveRecord::Base

  has_secure_password

  has_many :topics
  has_many :comments

  validates :email, :username, presence: true
  validates :email, :username, uniqueness: true
  validates :password, :length => {minimum: 4}
  
end
