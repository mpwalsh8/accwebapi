json.array!(@athletes_teams) do |athletes_team|
  json.extract! athletes_team, :id, :team_id, :athlete_id, :captain
  json.url athletes_team_url(athletes_team, format: :json)
end
