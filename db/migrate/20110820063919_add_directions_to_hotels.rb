class AddDirectionsToHotels < ActiveRecord::Migration
  def self.up
    add_column :hotels, :directions, :string
  end

  def self.down
    remove_column :hotels, :directions
  end
end
