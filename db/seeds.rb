# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  require 'faker'

user = User.create!(
  {email: "ejpgraham@gmail.com", password: "password", password_confirmation: "password"}
)
user.confirm

registered_apps = RegisteredApplication.create([
  {name: "New York Times", url: "www.nytimes.com", user: user},
  {name: "The Onion", url: "www.theonion.com", user: user},
  {name: "The AVClub", url: "www.avclub.com", user: user},
  {name: "Google", url: "www.google.com", user: user},
  {name: "Penny Arcade", url: "www.penny-arcade.com", user: user}
  ])

30.times do Event.create(
  {registered_application: registered_apps.sample, name: Faker::Hacker.verb}
  )
end

puts "Seed finished!"
puts "#{RegisteredApplication.count} applications created."
puts "#{Event.count} events created."
