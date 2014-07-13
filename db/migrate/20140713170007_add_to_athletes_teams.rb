class AddToAthletesTeams < ActiveRecord::Migration
  def change
    add_column :athletes_teams, :position, :string
    add_column :athletes_teams, :jerseynumber, :integer
  end
end
