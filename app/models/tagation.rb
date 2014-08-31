class Tagation < ActiveRecord::Base
  belongs_to :tag
  belongs_to :user
  belongs_to :tagable, :polymorphic => true

  validates :user_id, presence: true 

end
