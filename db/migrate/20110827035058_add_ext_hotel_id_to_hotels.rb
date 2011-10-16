class AddExtHotelIdToHotels < ActiveRecord::Migration
  def self.up
    add_column :hotels, :ext_hotel_id, :string
  end

  def self.down
    remove_column :hotels, :ext_hotel_id
  end
end
