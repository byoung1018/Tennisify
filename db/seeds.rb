# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Level.create!([{level: "2.5"}, {level: "3.5"}, {level: "4.5"}, {level: "5.5+"},
              {level: "3.0"}, {level: "4.0"}, {level: "5.0}"}])
AgeGroup.create!([{age_group: '1-18'}, {age_group: '18-40'}, {age_group: '40-55'},
                {age_group: '55-65'}, {age_group: '65+'}])
# AllowedLevel.create!([
#             {meeting_id: 24, level_id: 2},
#             {meeting_id: 24, level_id: 5},
#             {meeting_id: 24, level_id: 3},
#             {meeting_id: 24, level_id: 4}, ])

# AllowedAgeGroup.create!([
#             {meeting_id: 24, age_group_id: 2},
#             {meeting_id: 24, age_group_id: 3},
#             {meeting_id: 24, age_group_id: 4}, ])
# AllowedGender.create!([{meeting_id: 24, gender_id: 1},
#       {meeting_id: 24, gender_id: 2}])
Gender.create!([{gender: 'M'}, {gender: 'F'}])
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
  date: "Sun, 22 Feb 2015",
  time: "2000-01-01 18:00:00 UTC",
  max_players: 4,
  public: "Yes",
  location: "San Francisco",
  level: "4.5",
  age_groups: "18-40",
  genders: "F"})
