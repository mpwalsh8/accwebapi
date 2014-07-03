json.array!(@teams) do |team|
  json.extract! team, :id, :name, :sport, :active, :url, :twitter
  json.url team_url(team, format: :json)
end
