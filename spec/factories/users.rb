# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username "John Doe"
    email "iamsexy@gmail.com"
    password "1234q"
  end
end
