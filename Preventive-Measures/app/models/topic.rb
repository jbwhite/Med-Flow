class Topic < ActiveRecord::Base

  has_many :tagations, :as => :tagable
  has_many :tags, :through => :tagations
  belongs_to :user
  has_many :comments
end
