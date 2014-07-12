class AddTwitterToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :twitter, :string
  end
end
