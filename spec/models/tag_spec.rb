require 'rails_helper'

describe Tag do
  describe "#associations" do
    context "should have many tagations" do
      it {should have_many(:tagations)}
    end

    context "should have many topics" do
      it {should have_many(:topics)}
    end

    context "should have many comments" do
      it {should have_many(:comments)}
    end

    context "should have many users" do
      it {should have_many(:users)}
    end
  end
end
