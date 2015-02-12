# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Level.create!([{level: "2.5"},
              {level: "3.0"},
              {level: "3.5"},
              {level: "4.0"},
              {level: "4.5"},
              {level: "5.0"},
              {level: "5.5+"}])
AgeGroup.create!([{age_group: '1-18'},
                {age_group: '18-40'},
                {age_group: '40-55'},
                {age_group: '55-65'},
                {age_group: '65+'}])
Gender.create!([{gender: 'M'}, {gender: 'F'}])
# AllowedLevel.create!([
#             {meeting_id: 25, level_id: 2},
#             {meeting_id: 25, level_id: 5},
#             {meeting_id: 25, level_id: 3},
#             {meeting_id: 25, level_id: 4}, ])
# AllowedAgeGroup.create!([
#             {meeting_id: 25, age_group_id: 2},
#             {meeting_id: 25, age_group_id: 3},
#             {meeting_id: 25, age_group_id: 4}, ])
# AllowedGender.create!([{meeting_id: 25, gender_id: 1},
#       {meeting_id: 25, gender_id: 2}])

#id 1
User.create!({fname: "Bryce",
  lname: "Young",
  password: "asdfasdf",
  email: "byoung@gmail.com",
  username: "b",
  level: "4.5",
  reveal_age: true})

#id 2
User.create!({
  fname: "Ricky",
  lname: "Bobby",
  password: "asdfasdf",
  email: "boatsNhos@gmail.com",
  username: "hoboats",
  level: "4.0",
  reveal_age: "Yes",
  area: "San Francisco",
  age: "47",
  gender: "M",
  picture: "https://media2.wnyc.org/i/620/372/c/80/photologue/photos/ferrell.jpg"
})

#id 3
User.create!({
  fname: "Paul",
  lname: "Blart",
  password: "asdfasdf",
  email: "safermalls@gmail.com",
  username: "mallcop",
  level: "3.5",
  reveal_age: "Yes",
  area: "San Francisco",
  age: "49",
  gender: "M",
  picture: "http://www3.pictures.zimbio.com/pc/Kevin+James+Adam+Sandler+John+McEnroe+Play+kDzQvYcCCJAl.jpg"
  })
#id 4
User.create!({
  fname: "Bobby",
  lname: "Boucher",
  password: "asdfasdf",
  email: "bestH20@gmail.com",
  username: "wboy",
  level: "3.5",
  reveal_age: "Yes",
  area: "San Francisco",
  age: "49",
  gender: "M",
  picture: "http://www.hollywoodreporter.com/sites/default/files/2013/08/adam_sandler_us_open_a_l.jpg"
  })

#id 4




def create_meeting!(attrs)
  meeting = Meeting.new()
  objs_to_create = []
  attrs.each do |attr, value|
    if value.class.name == "Array"
      value.each do |value|
        attr_model = str_to_class(attr).where(attr => value).first
        allowed_obj_class = str_to_class("allowed_#{attr}")
        objs_to_create << allowed_obj_class.new({"#{attr}_id" => attr_model.id})
      end
    else
      meeting[attr] = value
    end
  end
  meeting.save!
  objs_to_create.each do |obj|
    obj.meeting_id = meeting.id
    obj.save!
  end
end

def str_to_class(str)
  return str.to_s.singularize.camelize.constantize
end
#id 1
create_meeting!({
  area: "San Francisco",
  location: "SFTC",
  title: "Beat up on the mall cop",
  organizer_id: 2,
  about: "Why wouldn't this be fun?",
  date: "Sun, 27 Feb 2015",
  time: "2000-01-01 14:00:00 UTC",
  max_players: 4,
  public: "Yes",
  level: ["3.5", "4.0", "4.5"],
  gender: ["M", "F"],
  age_group: ["18-40"]

})
#id 2
create_meeting!({
  area: "San Francisco",
  location: "Balboa Park",
  title: "Do you like racing?",
  organizer_id: 2,
  about: "Racing... tennis... I'll come up with the rules when we start...",
  date: "Sun, 20 Feb 2015",
  time: "2000-01-01 15:00:00 UTC",
  max_players: 4,
  public: "Yes",
  level: ["3.5", "4.0", "4.5"],
  gender: ["M", "F"],
  age_group: ["18-40"]
})

#id 3
create_meeting!({
  area: "San Francisco",
  location: "Golden Gate Park",
  title: "Monday Dubs",
  organizer_id: 1,
  about: "Cus we all need practice",
  date: "Sun, 22 Feb 2015",
  time: "2000-01-01 18:00:00 UTC",
  max_players: 4,
  public: "Yes",
  level: ["4.5"],
  gender: ["M"],
  age_group: ["18-40"]
})



Response.create!([
  {respondent_id: 1, meeting_id: 1, response_status: "declined"},
  {respondent_id: 2, meeting_id: 1, response_status: "accepted"},
  {respondent_id: 3, meeting_id: 1, response_status: "declined"},

  {respondent_id: 1, meeting_id: 2, response_status: "declined"},
  {respondent_id: 2, meeting_id: 2, response_status: "declined"},
  {respondent_id: 3, meeting_id: 2, response_status: "accepted"},

  {respondent_id: 1, meeting_id: 3, response_status: "maybe"},
  {respondent_id: 2, meeting_id: 3, response_status: "declined"},
  {respondent_id: 3, meeting_id: 3, response_status: "declined"},

  ])




create_meeting!({
  area: "San Francisco",
  location: "Golden Gate Park",
  title: "Monday Dubs",
  organizer_id: 1,
  about: "Cus we all need practice",
  date: "Sun, 22 Feb 2015",
  time: "2000-01-01 18:00:00 UTC",
  max_players: 4,
  public: "Yes",
  level: ["4.5"],
  gender: ["M"],
  age_group: ["18-40"]
})

create_meeting!({
  area: "San Francisco",
  location: "Golden Gate Park",
  title: "Monday Dubs",
  organizer_id: 1,
  about: "Cus we all need practice",
  date: "Sun, 22 Feb 2015",
  time: "2000-01-01 18:00:00 UTC",
  max_players: 4,
  public: "Yes",
  level: ["4.5"],
  gender: ["M"],
  age_group: ["18-40"]
})

create_meeting!({
  area: "San Francisco",
  location: "Golden Gate Park",
  title: "Monday Dubs",
  organizer_id: 1,
  about: "Cus we all need practice",
  date: "Sun, 22 Feb 2015",
  time: "2000-01-01 18:00:00 UTC",
  max_players: 4,
  public: "Yes",
  level: ["4.5"],
  gender: ["M"],
  age_group: ["18-40"]
})
