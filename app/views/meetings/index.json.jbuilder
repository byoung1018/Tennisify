json.array! @meetings do |meeting|
  json.extract! meeting, :title, :about, :date, :time, :organizer_id
end
