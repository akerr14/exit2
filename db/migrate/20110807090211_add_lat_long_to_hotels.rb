class AddLatLongToHotels < ActiveRecord::Migration
  def self.up
    add_column :hotels, :latitude, :float
    add_column :hotels, :longitude, :float
  end

  def self.down
    remove_column :hotels, :longitude
    remove_column :hotels, :latitude
  end
end
