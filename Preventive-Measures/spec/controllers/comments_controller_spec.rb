require 'rails_helper'

# describe CommentsController do 
# 	let!(:comment) { Comment.create(body:"How I was able to get rid of acne was a miracle.", user_id: 1, topic_id: 1) }

# 	describe "POST #create" do
#     context "when valid params are passed" do
#     	let(:valid_params) do
#     		{
#     			comment: {
#     				body:"How I was able to get rid of acne was a miracle.", 
#     				user_id: 1, 
#     				topic_id: 1
#     			}
#     		}
#       end

#       it "creates a comment" do 
#       	expect { 
#       		post :create, valid_params 
#       	}.to change(Comment, :count).by(1)
#       end
#     end

#     it "redirects to the created topic" do
#       post :create, comment: FactoryGirl.attributes_for(:comment)
#       expect(response).to redirect_to topic_path(assigns[:comment])
#     end
#   end
# end