json.array! @meetings do |meeting|
  json.partial! "meeting", meeting: meeting
end
