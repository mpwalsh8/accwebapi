json.array!(@rosters) do |roster|
  json.extract! roster, :id, :team_id, :athlete_id, :name
  json.url roster_url(roster, format: :json)
end
