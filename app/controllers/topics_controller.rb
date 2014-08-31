class TopicsController < ApplicationController

  def index
    @topics = Topic.order(created_at: :desc)
    @topic = Topic.new
<<<<<<< HEAD:app/controllers/topics_controller.rb
    @user = User.find_by(session[:user_id])
=======
    @user = User.find(session[:user_id])
>>>>>>> ba8b2138530700b9326016b4f4b468e8ebd53c44:app/controllers/topics_controller.rb
  end

  def show
    @topic = Topic.find(params[:id])
    @user = User.find(session[:user_id])
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.user_id = User.find(session[:user_id]).id

    if @topic.save
      redirect_to @topic
    else
      render 'index'
    end
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic=Topic.find(params[:id])
    if @topic.update(topic_params)
      redirect_to @topic
    else
      render 'edit'
    end
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
