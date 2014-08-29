class Comment < ActiveRecord::Base

	validates_presence_of :body
	
	
  has_many :tagations, :as => :tagable
  has_many :tags, :through => :tagations
  belongs_to :user
  belongs_to :topic
end
