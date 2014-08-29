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
end
