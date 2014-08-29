require 'rails_helper'

describe TopicsController do 
	let!(:topic) { Topic.create(title: "Acne", body:"How I was able to get rid of acne was a miracle." )}

	describe "GET #index" do 
		it "assigns all topics  as @topics"
		get :index
		expect(assigns(:topics)).to eq(Topic.all)
	end

end
