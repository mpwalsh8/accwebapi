class AddIndexToSportsVenues < ActiveRecord::Migration
  def change
    add_index :sports_venues, [:sport_id, :venue_id], :unique => true
  end
end
