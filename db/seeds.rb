# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#  Seed the Sports table
Sport.delete_all

sports = [
  { name: 'Baseball', imageurl: '/assets/pictograms/Baseball-Blk-100x100.png', active: false },
  { name: 'Basketball', imageurl: '/assets/pictograms/Basketball-Blk-100x100.png', active: false },
  { name: 'Cheerleading', imageurl: '/assets/pictograms/Cheerleading-Blk-100x100.png', active: false },
  { name: 'Cross Country', imageurl: '/assets/pictograms/CrossCountry-Blk-100x100.png', active: false },
  { name: 'Diving', imageurl: '/assets/pictograms/Diving-Blk-100x100.png', active: false },
  { name: 'Field Hockey', imageurl: '/assets/pictograms/FieldHockey-Blk-100x100.png', active: false },
  { name: 'Football', imageurl: '/assets/pictograms/Football-Blk-100x100.png', active: false },
  { name: 'Golf', imageurl: '/assets/pictograms/Golf-Blk-100x100.png', active: false },
  { name: 'Gymnastics', imageurl: '/assets/pictograms/Gymnastics-Blk-100x100.png', active: false },
  { name: 'Ice Hockey', imageurl: '/assets/pictograms/IceHockey-Blk-100x100.png', active: false },
  { name: 'Indoor Track', imageurl: '/assets/pictograms/IndoorTrack-Blk-100x100.png', active: false },
  { name: 'Lacrosse', imageurl: '/assets/pictograms/Lacrosse-Blk-100x100.png', active: false },
  { name: 'Softball', imageurl: '/assets/pictograms/Softball-Blk-100x100.png', active: false },
  { name: 'Soccer', imageurl: '/assets/pictograms/Soccer-Blk-100x100.png', active: false },
  { name: 'Sports Medicine', imageurl: '/assets/pictograms/FirstAid-Blk-100x100.png', active: false },
  { name: 'Stunt', imageurl: '/assets/pictograms/Gymnastics-Blk-100x100.png', active: false },
  { name: 'Swiming', imageurl: '/assets/pictograms/Swimming-Blk-100x100.png', active: false },
  { name: 'Tennis', imageurl: '/assets/pictograms/Tennis-Blk-100x100.png', active: false },
  { name: 'Track and Field', imageurl: '/assets/pictograms/TrackFieldPoleVault-Blk-100x100.png', active: false },
  { name: 'Volleyball', imageurl: '/assets/pictograms/Volleyball-Blk-100x100.png', active: false },
  { name: 'Wrestling', imageurl: '/assets/pictograms/Wrestling-Blk-100x100.png', active: false }
]

for sport in sports
  Sport.create!(sport)
end
