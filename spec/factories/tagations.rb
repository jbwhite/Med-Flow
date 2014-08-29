# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tagation do
    user FactoryGirl.build(:user)
    tag FactoryGirl.build(:tag)
    tagable FactoryGirl.build(:comment)
  end
end
