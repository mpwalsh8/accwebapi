json.array!(@athletes) do |athlete|
  json.extract! athlete, :id, :firstname, :middlename, :lastname, :nickname, :dob, :gradyear, :active, :height, :weight, :email, :twitter
  json.url athlete_url(athlete, format: :json)
end
