class CreateHotelsSojournSettings < ActiveRecord::Migration
  def self.up
    create_table :hotels_sojourn_settings, :id => false do |t|
      t.integer :hotel_id
      t.integer :sojourn_setting_id
    end
  end

  def self.down
    drop_table :hotels_sojourn_settings
	end
end
