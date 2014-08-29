class TopicsController < ApplicationController

	def index 
		@topics = Topic.all 
	end

	def show 
		@topic = Topic.find(params[:id])
	end

	def new 
		@topic = Topic.new
	end

	def edit
		@topic = Topic.find(params[:id])
	end

	def create
		@topic = Topic.new
		if @topic.save
			redirect_to @topic, notice: 'Topic successfully created'
		else
			render :new
		end
	end

	def update
		@topic = Topic.find(params[:id])
		if @topic.update(topic_params)
			redirect_to @topic, notice: "Topic Updated"
		else
			render action :edit
		end
	end

	def destroy
		@topic = Topic.find(params[:id])
		@topic.destroy
		redirect_to topics_url
	end

	private 
		def set_topic
			@topic = Topic.find(params[:id])
		end

		def topic_params
			params.require(:topic).permit(:title, :body)
		end
end
