json.extract! meeting, :id, :title, :about, :date, :time,
                  :max_players, :organizer_id, :public, :location
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

if current_user_response
  json.current_user_response do
    json.extract! current_user_response, :response_status
  end
end
