class User < ActiveRecord::Base

  has_secure_password

  has_many :topics
  has_many :comments
  validates :topics, presence: true
  validates :comments, presence: true
end
