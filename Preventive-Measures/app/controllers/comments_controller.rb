class CommentsController < ApplicationController

  def index
  end

  def show
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.create(comment_params)
    redirect_to topic_path(@topic)
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
    @topic = Topic.find(params[:topic_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to topic_path(@topic)
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

end
