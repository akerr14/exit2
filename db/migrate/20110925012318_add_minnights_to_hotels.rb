class AddMinnightsToHotels < ActiveRecord::Migration
  def self.up
    add_column :hotels, :minimum_nights, :string
  end

  def self.down
    remove_column :hotels, :minimum_nights
  end
end
