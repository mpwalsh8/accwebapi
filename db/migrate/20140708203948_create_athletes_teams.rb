class CreateAthletesTeams < ActiveRecord::Migration
  def self.up
    create_table :athletes_teams do |t|
      t.integer :team_id, :null => false
      t.integer :athlete_id, :null => false
      t.boolean :captain

      t.timestamps
    end

    #  Add an index
    add_index :athletes_teams, [:athlete_id, :team_id], :unique => true
  end

  def self.down
    remove_index :athletes_teams, [:athlete_id, :team_id]
    drop_table :athletes_teams
  end
end

