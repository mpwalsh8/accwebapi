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
  { name: 'Baseball', imageurl: 'N/A' },
  { name: 'Basketball', imageurl: 'N/A' },
  { name: 'Cheerleading', imageurl: 'N/A' },
  { name: 'Cross Country', imageurl: 'N/A' },
  { name: 'Diving', imageurl: 'N/A' },
  { name: 'Field Hockey', imageurl: 'N/A' },
  { name: 'Football', imageurl: 'N/A' },
  { name: 'Golf', imageurl: 'N/A' },
  { name: 'Hockey', imageurl: 'N/A' },
  { name: 'Indoor Track', imageurl: 'N/A' },
  { name: 'Lacrosse', imageurl: 'N/A' },
  { name: 'Softball', imageurl: 'N/A' },
  { name: 'Soccer', imageurl: 'N/A' },
  { name: 'Sports Medicine', imageurl: 'N/A' },
  { name: 'Stunt', imageurl: 'N/A' },
  { name: 'Swiming', imageurl: 'N/A' },
  { name: 'Tennis', imageurl: 'N/A' },
  { name: 'Track and Field', imageurl: 'N/A' },
  { name: 'Volleyball', imageurl: 'N/A' },
  { name: 'Wrestling', imageurl: 'N/A' }
]

for sport in sports
  Sport.create!(sport)
end
