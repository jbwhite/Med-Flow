class TagationsController < ApplicationController

  def create
    p params
    p "**************************************"
    tagation = Tagation.new(tagation_params)
    tagation.user_id = User.find(session[:user_id]).id
    tagation.save
    @topic = Topic.find(tagation.tagable_id) if tagation.tagable_type == "Topic"
    @topic = Comment.find(tagation.tagable_id).topic if tagation.tagable_type == "Comment"

    redirect_to @topic
  end

  private

  def tagation_params
    params.require(:tagation).permit(:tagable_id, :tagable_type, :tag_id)
  end

end
