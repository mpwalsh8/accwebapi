class CreateSportsVenues < ActiveRecord::Migration
  def change
    create_table :sports_venues do |t|
      t.integer :sport_id
      t.integer :venue_id

      t.timestamps
    end
  end
end
