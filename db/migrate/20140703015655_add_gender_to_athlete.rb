class AddGenderToAthlete < ActiveRecord::Migration
  def change
    add_column :athletes, :gender, :string
  end
end
