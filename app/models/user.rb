class User < ActiveRecord::Base

  has_secure_password

  has_many :topics
  has_many :comments


  validates :email, :username, presence: true
  validates :email, :username, uniqueness: true
  validates :password, :length => {minimum: 4}


  has_many :tagations
<<<<<<< HEAD
  has_many :tags, through: :tagations
=======
  has_many :tags, :through => :tagations
  has_many :scores
  has_many :comment_scores
>>>>>>> 25cd417e8f458b5ef3dbf77fe74cb5601a95adee
  # validates :topics, presence: true
  # validates :comments, presence: true

end
