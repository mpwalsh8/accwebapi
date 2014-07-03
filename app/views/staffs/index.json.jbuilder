json.array!(@staffs) do |staff|
  json.extract! staff, :id, :team_id, :coach_id, :head_coach
  json.url staff_url(staff, format: :json)
end
