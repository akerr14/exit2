class AddExecclubToHotels < ActiveRecord::Migration
  def self.up
    add_column :hotels, :executive_club, :text
  end

  def self.down
    remove_column :hotels, :executive_club
  end
end
