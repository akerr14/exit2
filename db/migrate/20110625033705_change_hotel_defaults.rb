class ChangeHotelDefaults < ActiveRecord::Migration
  def self.up
		change_column_default(:hotels, :inclusions, nil)
		change_column_default(:hotels, :amenities, nil)
		change_column_default(:hotels, :facilities, nil)
		change_column_default(:hotels, :hotel, true)
	end

  def self.down
  end
end
