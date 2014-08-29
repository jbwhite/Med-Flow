require 'rails_helper'

describe TagationsController do
  describe "post#create" do
    it "creates a new tagation" do
      post :create, tagation: FactoryGirl.attributes_for(:tagation)
    end
  end
end
