class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.string :name
      t.string :imageurl

      t.timestamps
    end
  end
end
