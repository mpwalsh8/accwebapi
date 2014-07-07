class CreateCoachesTeams < ActiveRecord::Migration
  def self.up
    create_table :coaches_teams do |t|
      t.integer :team_id, :null => false
      t.integer :coach_id, :null => false
      t.boolean :headcoach

      t.timestamps
    end

    #  Add an index
    add_index :coaches_teams, [:coach_id, :team_id], :unique => true
  end

  def self.down
    remove_index :coaches_teams, [:coach_id, :team_id]
    drop_table :coaches_teams
  end
end
