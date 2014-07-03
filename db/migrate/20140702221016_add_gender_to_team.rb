class AddGenderToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :gender, :string
  end
end
