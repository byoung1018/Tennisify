json.array! @meetings do |meeting|
  json.partial! "meeting", meeting: meeting, current_user_response: @current_user_response
end
