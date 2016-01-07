# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
puts 'Remove all users'
Post.destroy_all
puts 'Remove all posts'
Car.destroy_all
puts 'Remove all cars'

100.times do |n|
  u = User.create! name: "User #{n}"
  20.times do
    u.posts.create! title: 'Post!', content: 'hej med dig'
    u.cars.create! name: 'logan', model: 'Logan'
  end
end
