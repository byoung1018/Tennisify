# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!({fname: "Bryce",
  lname: "Young",
  password: "asdfasdf",
  email: "byoung@gmail.com",
  username: "b",
  level: "4.5",
  reveal_age: true})
