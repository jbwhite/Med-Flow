require 'rails_helper'

describe TopicsController do
	let!(:topic) { Topic.create(title: "Acne", body:"How I was able to get rid of acne was a miracle.", user_id: 1 )}

	describe "GET #index" do
		it "assigns all topics as @topics" do
			get :index
			expect(assigns(:topics)).to eq(Topic.order(created_at: :desc))
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
			get :index
			expect(assigns(:topic)).to be_a Topic
		end
	end

	describe "POST #create" do
    context "when valid params are passed" do
      it "create new topic" do
        post :create, topic: FactoryGirl.attributes_for(:topic)
      end
    end

    it "redirects to the created topic" do
      post :create, topic: FactoryGirl.attributes_for(:topic)
      expect(response).to redirect_to topic_path(assigns[:topic])
    end
  end
  describe "DELETE #destroy" do
  	it "destroys the topic" do
  		expect {
  			delete :destroy, id: topic.id
  		}.to change(Topic.all, :count).by(-1)
  	end

  	it "redirects to topic#index" do
  		delete :destroy, id: topic.id
  		expect(response).to redirect_to(topics_path)
  	end
  end
end
