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
  reveal_age: "no"})

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
  email: "H20@gmail.com",
  username: "wboy",
  level: "3.5",
  reveal_age: "Yes",
  area: "San Francisco",
  age: "49",
  gender: "M",
  picture: "http://www.hollywoodreporter.com/sites/default/files/2013/08/adam_sandler_us_open_a_l.jpg"
  })
  #id 5
User.create!({
  fname: "Redfoo",
  lname: "",
  password: "asdfasdf",
  email: "shufflin@gmail.com",
  username: "partyrocker",
  level: "5.0",
  reveal_age: "Yes",
  area: "Eastbay",
  age: "40",
  gender: "M",
  picture: "http://i.kinja-img.com/gawker-media/image/upload/s--gvU1oi0f--/18honmemrfar6jpg.jpg"
})
#id 6
User.create!({
  fname: "Jim",
  lname: "Levenstein",
  password: "asdfasdf",
  email: "pie@gmail.com",
  username: "pieman",
  level: "2.5",
  reveal_age: "Yes",
  area: "Eastbay",
  age: "38",
  gender: "M",
  picture: "http://images.buddytv.com/btv_2_1515137_1_434_593_0_/jason-biggs-during-a.jpg"
})

#id 7
User.create!({
  fname: "Raymond",
  lname: "Babbit",
  password: "asdfasdf",
  email: "MakeItRain@gmail.com",
  username: "rainman",
  level: "3.0",
  reveal_age: "Yes",
  area: "South Bay",
  age: "77",
  gender: "M",
  picture: "http://coolspotters.com/files/photos/93834/dustin-hoffman-and-tennis-gallery.jpg?1357407876"
  })

  #id 8
User.create!({
  fname: "Patch",
  lname: "Adams",
  password: "asdfasdf",
  email: "MakeEmLaugh@gmail.com",
  username: "patch",
  level: "3.5",
  reveal_age: "Yes",
  area: "South Bay",
  age: "64",
  gender: "M",
  picture: "https://pbs.twimg.com/media/Bu4zEj7CUAA8tj-.jpg"
  })

  #id 9
User.create!({
  fname: "Roger",
  lname: "Federer",
  password: "asdfasdf",
  email: "fed@gmail.com",
  username: "rf",
  level: "5.5+",
  reveal_age: "Yes",
  area: "Eastbay",
  age: "33",
  gender: "M",
  picture: "http://media.central.ie/media/images/r/RogerFedererwinsWimbledonJul12a_large.jpg"
})
#id 10
User.create!({
  fname: "Ana",
  lname: "Ivanovic",
  password: "asdfasdf",
  email: "ana@gmail.com",
  username: "ivo",
  level: "5.5+",
  reveal_age: "Yes",
  area: "Marin",
  age: "27",
  gender: "F",
  picture: "http://www.thewallpapers.org/photo/49166/Ana-Ivanovic-WS-Open-Tennis-079.jpg"
})
# 11
User.create!({
  fname: "Maria",
  lname: "sharapova",
  password: "asdfasdf",
  email: "maria@gmail.com",
  username: "maria",
  level: "5.5+",
  reveal_age: "Yes",
  area: "Marin",
  age: "27",
  gender: "F",
  picture: "http://fullhdimages.net/myadmin/img/redownload.php?ru_id=4252%20&%20ru_img=1392483283_free-maria-sharapova-wide-screen-photos.jpg"
})

# 12
User.create!({
  fname: "Novak",
  lname: "djokovic",
  password: "asdfasdf",
  email: "novak@gmail.com",
  username: "nole",
  level: "5.5+",
  reveal_age: "Yes",
  area: "Sacramento",
  age: "27",
  gender: "M",
  picture: "http://pardontheeruption.com/wp-content/uploads/2014/05/Novak-Djokovic-Cheeky.jpg"
})
# 13
User.create!({
  fname: "Serena",
  lname: "Williams",
  password: "asdfasdf",
  email: "champion@gmail.com",
  username: "serena",
  level: "5.5+",
  reveal_age: "Yes",
  area: "South Bay",
  age: "33",
  gender: "F",
  picture: "https://blog-blogmediainc.netdna-ssl.com/upload/SportsBlogcom/80649/0642112001419278232_filepicker.jpg"
})




def create_meeting!(attrs)
  meeting = Meeting.new()
  objs_to_create = []
  attrs.each do |attr, value|
    if value.class.name == "Array"
      value.each do |value|
        attr_model = str_to_class(attr).where(attr => value).first
        allowed_obj_class = str_to_class("allowed_#{attr}")
        puts attr
        puts value

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
  organizer_id: 3,
  about: "I need practice so what better way to get it?",
  date: "Sun, 27 Feb 2015",
  time: "2000-01-01 14:00:00 UTC",
  max_players: 8,
  public: "Yes",
  level: ["3.5", "4.0", "4.5", "5.0", "5.5+"],
  gender: ["M", "F"],
  age_group: ['18-40', '40-55', '55-65', '65+']
})
Response.create!([
  {respondent_id: 6, meeting_id: 1, response_status: "maybe"},
  {respondent_id: 5, meeting_id: 1, response_status: "accepted"},
  {respondent_id: 3, meeting_id: 1, response_status: "accepted"},
  {respondent_id: 2, meeting_id: 1, response_status: "declined"},
  {respondent_id: 4, meeting_id: 1, response_status: "accepted"},
  {respondent_id: 8, meeting_id: 1, response_status: "declined"},
  {respondent_id: 10, meeting_id: 1, response_status: "accepted"},
  {respondent_id: 11, meeting_id: 1, response_status: "declined"},
  ])

#id 2
create_meeting!({
  area: "South Bay",
  location: "Decathelon",
  title: "Weekend hitting",
  organizer_id: 4,
  about: "Just some casual tennis.  I'll bring water",
  date: "Sat, 26 Feb 2015",
  time: "2000-01-01 14:00:00 UTC",
  max_players: 16,
  public: "Yes",
  level: ["3.5", "4.0", "4.5"],
  gender: ["M", "F"],
  age_group: ["18-40", '40-55', '55-65']
})

Response.create!([
  {respondent_id: 2, meeting_id: 2, response_status: "maybe"},
  {respondent_id: 7, meeting_id: 2, response_status: "accepted"},
  {respondent_id: 5, meeting_id: 2, response_status: "accepted"},
  {respondent_id: 8, meeting_id: 2, response_status: "declined"},
  {respondent_id: 4, meeting_id: 2, response_status: "accepted"},
  {respondent_id: 9, meeting_id: 2, response_status: "maybe"},
  {respondent_id: 6, meeting_id: 2, response_status: "accepted"},
  {respondent_id: 1, meeting_id: 2, response_status: "declined"},
])

  #id 3
create_meeting!({
  area: "Diablo North",
  location: "Heather Farms",
  title: "PARTY ROCK!",
  organizer_id: 5,
  about: "Every day I'm shufflin!  Come out and play!",
  date: "Sun, 21 Feb 2015",
  time: "2000-01-01 12:00:00 UTC",
  max_players: 20,
  public: "Yes",
  level: ['2.5', '3.0', '3.5', '4.0', '4.5', '5.0', '5.5+'],
  gender: ["M", "F"],
  age_group: ['18-40', '40-55', '55-65', '65+']
})

Response.create!([
  {respondent_id: 5, meeting_id: 3, response_status: "accepted"},
  {respondent_id: 7, meeting_id: 3, response_status: "maybe"},
  {respondent_id: 10, meeting_id: 3, response_status: "accepted"},
  {respondent_id: 8, meeting_id: 3, response_status: "declined"},
  {respondent_id: 4, meeting_id: 3, response_status: "accepted"},
  {respondent_id: 13, meeting_id: 3, response_status: "declined"},
  {respondent_id: 9, meeting_id: 3, response_status: "maybe"},
  {respondent_id: 6, meeting_id: 3, response_status: "accepted"},
  {respondent_id: 3, meeting_id: 3, response_status: "declined"},
  {respondent_id: 6, meeting_id: 3, response_status: "accepted"},
  {respondent_id: 11, meeting_id: 3, response_status: "declined"},
  {respondent_id: 2, meeting_id: 3, response_status: "declined"},
  {respondent_id: 12, meeting_id: 3, response_status: "accepted"},

  ])

#id 4
create_meeting!({
  area: "San Francisco",
  location: "Balboa Park",
  title: "Boats 'n Ho's!'",
  organizer_id: 2,
  about: "'n tennis... ",
  date: "Sun, 20 Feb 2015",
  time: "2000-01-01 15:00:00 UTC",
  max_players: 4,
  public: "Yes",
  level: ['2.5', '3.0', '3.5', '4.0', '4.5', '5.0', '5.5+'],
  gender: ["F"],
  age_group: ["18-40"]
})

Response.create!([
  {respondent_id: 2, meeting_id: 4, response_status: "accepted"},
  {respondent_id: 11, meeting_id: 4, response_status: "accepted"},
  {respondent_id: 13, meeting_id: 4, response_status: "accepted"},
  {respondent_id: 10, meeting_id: 4, response_status: "accepted"},
  ])

#id 5
create_meeting!({
  area: "San Francisco",
  location: "Golden Gate Park",
  title: "Monday Dubs",
  organizer_id: 1,
  about: "Cus we all need practice... well at least I do...",
  date: "Mon, 23 Feb 2015",
  time: "2000-01-01 18:00:00 UTC",
  max_players: 4,
  public: "Yes",
  level: ["4.5"],
  gender: ["M"],
  age_group: ["18-40"]
})

#id 6
create_meeting!({
  area: "Sacramento",
  location: "Natomas",
  title: "Open level workout",
  organizer_id: 9,
  about: "We will run some drill, do some cross training and then play a set or two.  ",
  date: "Wed, 25 Feb 2015",
  time: "2000-01-01 18:00:00 UTC",
  max_players: 4,
  public: "Yes",
  level: ["5.5+"],
  gender: ["M", "F"],
  age_group: ["18-40"]
})
Response.create!([
  {respondent_id: 9, meeting_id: 6, response_status: "declined"},
  {respondent_id: 12, meeting_id: 6, response_status: "maybe"},
  {respondent_id: 10, meeting_id: 6, response_status: "accepted"},
  {respondent_id: 13, meeting_id: 6, response_status: "accepted"},
  ])

#id 7
create_meeting!({
  area: "Sacramento",
  location: "Natomas",
  title: "Ladies Dubs",
  organizer_id: 10,
  about: "We are looking for a 4th",
  date: "Sun, 22 Feb 2015",
  time: "2000-01-01 18:00:00 UTC",
  max_players: 4,
  public: "Yes",
  level: ["5.5+"],
  gender: ["F"],
  age_group: ["18-40"]
})
Response.create!([
  {respondent_id: 10, meeting_id: 7, response_status: "accepted"},
  {respondent_id: 11, meeting_id: 7, response_status: "accepted"},
  {respondent_id: 13, meeting_id: 7, response_status: "accepted"},
  ])

#id 8
create_meeting!({
  area: "Eastbay",
  location: "Harbor Bay",
  title: "Looking for some Singles",
  organizer_id: 12,
  about: "Looking a hitting partner not named Roger.  We can either drill, play a match or both",
  date: "Mon, 23 Feb 2015",
  time: "2000-01-01 18:00:00 UTC",
  max_players: 2,
  public: "Yes",
  level: ["4.5", '5.0', "5.5+"],
  gender: ["M"],
  age_group: ["18-40"]
  })

create_meeting!({
  area: "Eastbay",
  location: "Harbor Bay",
  title: "Looking for some Singles",
  organizer_id: 12,
  about: "Looking a hitting partner not named Roger.  We can either drill, play a match or both",
  date: "Mon, 23 Feb 2015",
  time: "2000-01-01 18:00:00 UTC",
  max_players: 2,
  public: "Yes",
  level: ["4.5", '5.0', "5.5+"],
  gender: ["M"],
  age_group: ["18-40"]
})
