class AddHotelToHotels < ActiveRecord::Migration
  def self.up
  	add_column :hotels, :hotel, :boolean
	end

  def self.down
		remove_column :hotels, :hotel
  end
end

