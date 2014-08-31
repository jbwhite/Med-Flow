class Topic < ActiveRecord::Base

	validates_presence_of :title
	validates_presence_of :body

  has_many :comments, :as => :commentable
  has_many :tagations, :as => :tagable
  has_many :tags, :through => :tagations
  belongs_to :user
  # has_many :comments
  has_many :scores

  # def comments
  #   Comments.where("commentable_type = ? AND commentable_id = ?", "Topic", self.id)
  # end






end
