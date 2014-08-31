class TagationsController < ApplicationController

  def create
    tagation = Tagation.new(tagation_params)
    tagation.user_id = User.find(session[:user_id]).id
    tagation.save
    p tagation
    puts "***************************************************"
    @topic = Topic.find(tagation.tagable_id)
    redirect_to @topic
  end

  private

  def tagation_params
    params.require(:tagation).permit(:tagable_id, :tagable_type, :tag_id)
  end

end
