class TopicsController < ApplicationController

  def index
    @topics = Topic.all
    @topic = Topic.new
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def create
    @topics = Topic.all
    @topic = Topic.new(topic_params)

    if @topic.save
      redirect_to @topic
    else
      render 'index'
    end
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topics_path
  end

  private
    def topic_params
      params.require(:topic).permit(:title, :body)
    end

end
