require 'rails_helper'

describe Comment do
	let!(:user) { User.create(username: "Justin W", email: "jwag89@gmail.com", password:"jwag") }
	let!(:topic) { Topic.create(title:"Forget DBC", body:"I am leaving in 2 weeks", user_id: 1) }
	let!(:comment) { Comment.create(body: "Hello how was your day", user_id: 1, topic_id: 1) }
	
	context "body" do
		it "should return the body" do  
			p comment
			expect(comment.body).to eq("Hello how was your day")
		end
	end

	describe "valids params" do 
		it "accepts only one parameter" do 
			expect { Comment.create(:body) }.to raise_error(ArgumentError)
		end
	end

	describe "#associations" do 
		context "should belong to user" do 
			it { should belong_to(:user) }
		end

		context "should belong to topic" do 
			it { should belong_to(:topic) }
		end
	end
end
