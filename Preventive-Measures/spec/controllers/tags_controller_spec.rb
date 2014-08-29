require 'rails_helper'

describe TagsController do
  let!(:tag) {Tag.create(subject: "I'm a tag!")}

  describe "get#index" do
    it "assigns all tags as @tags" do
      get :index
      expect(assigns(:tags)).to eq(Tag.all)
    end
  end

  describe "get#new" do
    it "initializes a new instance of topic" do
      get :new
      expect(assigns(:tag)).to be_a Tag
    end
  end

  describe "post#create" do
    context "when valid params are passed" do
      it "creates a new tag" do
        post :create, tag: FactoryGirl.attributes_for(:tag)
      end
    end
  end

end



