json.array!(@sports) do |sport|
  json.extract! sport, :id, :name, :imageurl
  json.url sport_url(sport, format: :json)
end
