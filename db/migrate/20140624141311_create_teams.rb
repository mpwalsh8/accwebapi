class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :sport
      t.boolean :active
      t.string :url
      t.string :twitter

      t.timestamps
    end
  end
end
