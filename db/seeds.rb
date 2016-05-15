# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeting up users..."

User.create(email: "clark_kent@gmail.com",  password: "123123123")
User.create(email: "bruce_wayne@gmail.com", password: "123123123")

puts
puts "Done !"

puts

User.all.find_each do |user|
  puts
  puts "* test user setup: #{user.email} - 123123123"
end
