json.extract! meeting, :id, :title, :about, :date, :time, :organizer_id, :public, :location

if current_user_response
  json.current_user_response do
    json.extract! current_user_response, :response_status
  end
end
