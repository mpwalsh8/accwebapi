class CreateRosters < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.integer :team_id
      t.integer :athlete_id
      t.string :name

      t.timestamps
    end
  end
end
