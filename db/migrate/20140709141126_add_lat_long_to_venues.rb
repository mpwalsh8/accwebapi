class AddLatLongToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :latlong, :string
  end
end
