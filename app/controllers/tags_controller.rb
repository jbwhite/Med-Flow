class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @tag = Tag.new
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def create
    @tag = Tag.find_or_create_by(tag_params)
    puts "hi" if params[:topic_id] == nil
    puts "hello" unless params[:comment_id] == nil
    puts "*********************************"
    @topic = Topic.find(params[:topic_id])
    user = User.find(session[:user_id])
    Tagation.create(tagable_id: @topic.id, tagable_type: "Topic", user_id: user.id, tag_id: @tag.id)
    redirect_to @topic
  end

  def update
      if @tag.update(tag_params)
        redirect_to @tag, notice: 'Tag was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @tag.destroy
    redirect_to tags_url, notice: 'Tag was successfully destroyed.'
  end

  private
    def tag_params
      params.require(:tag).permit(:subject)
    end
end
