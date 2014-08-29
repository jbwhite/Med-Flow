require 'rails_helper'

describe TopicsController do 
	let!(:topic) { Topic.create(title: "Acne", body:"How I was able to get rid of acne was a miracle." )}

	describe "GET #index" do 
		it "assigns all topics as @topics" do
			get :index
			expect(assigns(:topics)).to eq(Topic.all)
		end
	end

	describe "#GET show" do 
		it "assigns the requested topic as @topic" do 
			get :show, { id: topic.to_param }
			expect(assigns(:topic)).to eq(topic)
		end
	end

	describe "GET new" do 
		it "initializes a new instance of topic" do
			get :new
			expect(assigns(:topic)).to be_a Topic
		end
	end	
end
