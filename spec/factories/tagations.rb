# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tagation do
    user factory: :user
    tag factory: :tag
    tagable factory: :comment
  end
end
