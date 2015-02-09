json.extract! meeting, :id, :title, :about, :date, :time,
                  :max_players, :organizer_id, :public, :location

json.allowed_genders do
  json.array! meeting.val_arr_association("gender")
end

json.allowed_levels do
  json.array! meeting.val_arr_association("level")
end
json.allowed_age_groups do
  json.array! meeting.val_arr_association("age_group")
end

if current_user_response
  json.current_user_response do
    json.extract! current_user_response, :response_status
  end
end
