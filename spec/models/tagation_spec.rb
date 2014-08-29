require 'rails_helper'

describe Tagation do
  describe "#associations" do
    context "should belong to tag" do
      it {should belong_to(:tag)}
    end

    context "should belong to user" do
      it {should belong_to(:user)}
    end

    context "should belong to tagable" do
      it {should belong_to(:tagable)}
    end
  end
end
