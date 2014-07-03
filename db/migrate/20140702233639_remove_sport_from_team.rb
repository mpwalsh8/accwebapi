class RemoveSportFromTeam < ActiveRecord::Migration
  def change
    remove_column :teams, :sport, :string
  end
end
