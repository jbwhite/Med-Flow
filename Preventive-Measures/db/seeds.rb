# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

10.times do
  User.create(username: Faker::Internet.user_name, email: Faker::Internet.safe_email, password: Faker::Internet.password(8))
end

10.times do
  Topic.create(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph, user_id: rand(1..10))
end

10.times do
  Comment.create(body: Faker::Lorem.paragraph, user_id: rand(1..10), topic_id: rand(1..10))
end

5.times do
  Tag.create(subject: Faker::Lorem.word)
end

30.times do
  t = Topic.all.sample
  Tagation.create(tagable_id: t.id, tagable_type: "Topic", user_id: t.user.id, tag_id: Tag.all.sample)
end

30.times do
  c = Comment.all.sample
  Tagation.create(tagable_id: c.id, tagable_type: "Comment", user_id: c.user.id, tag_id: Tag.all.sample)
end
