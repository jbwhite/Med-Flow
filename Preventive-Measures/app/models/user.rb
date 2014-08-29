class User < ActiveRecord::Base

  has_secure_password

  has_many :topics
  has_many :comments
  has_many :tagations
  has_many :tags, :through => :tagations
  # validates :topics, presence: true
  # validates :comments, presence: true
end
