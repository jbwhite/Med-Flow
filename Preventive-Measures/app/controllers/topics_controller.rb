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
		@topic = Topic.new(topic_params)
		if @topic.save
			redirect_to @topic, notice: 'Topic successfully created'
		else
			render :new
		end
	end

	private 
		def topic_params
			params.require(:topic).permit(:title, :body)
		end
end
