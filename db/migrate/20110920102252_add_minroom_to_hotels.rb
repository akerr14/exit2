class AddMinroomToHotels < ActiveRecord::Migration
  def self.up
    add_column :hotels, :minimum_room, :string
  end

  def self.down
    remove_column :hotels, :minimum_room
  end
end
