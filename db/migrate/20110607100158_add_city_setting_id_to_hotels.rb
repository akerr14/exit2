class AddCitySettingIdToHotels < ActiveRecord::Migration
  def self.up
    add_column :hotels, :city_setting_id, :integer
  end

  def self.down
    remove_column :hotels, :city_setting_id
  end
end
