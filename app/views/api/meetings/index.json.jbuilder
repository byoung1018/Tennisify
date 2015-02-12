json.array! @meetings do |meeting|
  json.partial! "meeting", meeting: meeting, responses: @responses,
            current_user_response: @current_user_response
end
