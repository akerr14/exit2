class AddNotesToHotels < ActiveRecord::Migration
  def self.up
    add_column :hotels, :notes, :text
  end

  def self.down
    remove_column :hotels, :notes
  end
end
