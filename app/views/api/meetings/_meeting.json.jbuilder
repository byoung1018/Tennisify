json.extract! meeting, :id, :title, :about, :date, :time,
                  :max_players, :organizer_id, :public, :area, :location
json.invited_users do
  json.array! meeting.invited_users do |invited_user|
    json.extract! invited_user, :id, :fname, :lname
  end
end
json.organizer do
  json.extract! meeting.organizer, :fname, :lname
end

json.genders do
  json.array! meeting.val_arr_association("gender")
end

json.levels do
  json.array! meeting.val_arr_association("level")
end
json.age_groups do
  json.array! meeting.val_arr_association("age_group")
end

if responses
  json.responses do
    json.array! responses do |response|
      json.extract! response, :response_status
      json.respondent do
        json.extract! response.respondent, :id, :fname, :lname, :email, :username, :level,
        :area, :age, :reveal_age, :gender, :picture
      end
    end
  end
end




if current_user_response
  puts current_user_response
  json.current_user_response do
    json.extract! current_user_response, :response_status
  end
end
