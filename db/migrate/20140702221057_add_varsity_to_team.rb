class AddVarsityToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :varsity, :boolean
  end
end
