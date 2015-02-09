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
Meeting.Create!({
  title: "Monday Night Dubs",
  organizer_id: 25,
  about: "Cus we all need practice",
  date: Sun, 22 Feb 2015,
  time: 2000-01-01 18:00:00 UTC,
  max_players: 4,
  public: "Yes",
  location: "San Francisco",
  level: "4.5",
  age_groups: "18-40",
  genders: "F"]})
