class AddVillaToHotels < ActiveRecord::Migration
  def self.up
    add_column :hotels, :villa, :boolean
  end

  def self.down
    remove_column :hotels, :villa
  end
end
