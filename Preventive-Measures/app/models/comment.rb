class Comment < ActiveRecord::Base

  has_many :tagations, :as => :tagable
  has_many :tags, :through => :tagations
  belongs_to :user
  belongs_to :topic
end
