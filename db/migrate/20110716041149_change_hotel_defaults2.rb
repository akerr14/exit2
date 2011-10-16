class ChangeHotelDefaults2 < ActiveRecord::Migration
  def self.up
		change_column_default(:hotels, :amenities, 'Complimentary Wi-Fi ($25 per day), flatscreen TV, DVD, CD player, iPod dock, minibar, air conditioning, brand-name toiletries')
	end

  def self.down
  end
end
