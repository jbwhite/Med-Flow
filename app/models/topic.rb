class Topic < ActiveRecord::Base

  default_scope {{:order => 'created_at DESC'}}

	validates_presence_of :title, :message => "Please enter title"
	validates_presence_of :body, :message => "Please enter body"
	

  has_many :tagations, :as => :tagable
  has_many :tags, :through => :tagations
  belongs_to :user
  has_many :comments
  has_many :scores

  def self.search(search)
  	if search
    	where("title LIKE ? OR body LIKE ?", "%#{search}%","%#{search}%")
  	else
    	all
  	end
	end
end
