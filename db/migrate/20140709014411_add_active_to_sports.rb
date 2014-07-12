class AddActiveToSports < ActiveRecord::Migration
  def change
    add_column :sports, :active, :boolean, default: false
  end
end
