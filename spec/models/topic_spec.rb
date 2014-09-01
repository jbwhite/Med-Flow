# require 'rails_helper'

# describe Topic do
# 	let!(:user) { User.create(username: "Justin W", email: "jwag89@gmail.com", password:"jwag") }
# 	let!(:topic) { Topic.create(title:"Forget DBC", body:"I am leaving in 2 weeks", user_id: 1) }
# 	let!(:comment) { Comment.create(body: "Hello how was your day", user_id: 1, topic_id: 1) }
	
# 	context "title" do
# 		it "should return the title" do  
# 			expect(topic.title).to eq("Forget DBC")
# 		end
# 	end

	# context "body" do
	# 	it "should return the body" do  
	# 		expect(topic.body).to eq("I am leaving in 2 weeks")
	# 	end
	# end

	# describe "valids params" do 
	# 	it "accepts two parameter" do 
	# 		expect { Topic.create(:title, :body) }.to raise_error(ArgumentError)
	# 	end
	# end

	# describe "#associations" do 
	# 	context "topic should belong to user" do 
	# 		it { should belong_to(:user) }
	# 	end
	# end

# 	context "topic should have many comments" do 
# 			it { should have_many(:comments) }
# 		end

# 	context "topic should have many tags" do 
# 		it { should have_many(:tags) }
# 	end
# end