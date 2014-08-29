require 'rails_helper'

describe UsersController do
	# let!(:user) { create(:user)}
  let!(:user) { User.create!(username: "John Doe", email: "iamsexy@gmail.com", password: "1234q") }

	describe "GET new" do
		it "initializes a new user" do
      # puts user
      # puts FactoryGirl.attributes_for(:user)
			get :new
			expect(assigns(:user)).to be_a User
		end
	end

	describe "POST #create" do
    context "when valid params are passed" do
      it "creates a new user" do
        # puts User.count
        # post :create, user: FactoryGirl.attributes_for(:user)
        expect {
          post :create, user: {username: "John Doe1", email: "iamsexy@gmail1.com", password: "11234q"}
        }.to change(User, :count).by(1)
      end

    end

    it "redirects to the root/home page" do
      post :create, user: FactoryGirl.attributes_for(:user)
      response.status.should be(200)
    end
  end
 end
