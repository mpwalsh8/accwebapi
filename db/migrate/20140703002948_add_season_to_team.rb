class AddSeasonToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :season, :string
  end
end
