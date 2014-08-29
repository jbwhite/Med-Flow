require 'rails_helper'

describe Comment do
	let(:comment) { Comment.create(body: "Hello how was your day") }
	
	context "body" do
		it "should return the body" do  
			expect(comment.body).to eq("Hello how was your day")
		end
	end
end
