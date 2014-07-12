json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :address, :googlemapsurl, :phone
  json.url venue_url(venue, format: :json)
end
