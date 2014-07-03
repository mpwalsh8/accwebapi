class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.integer :team_id
      t.integer :coach_id
      t.boolean :head_coach

      t.timestamps
    end
  end
end
