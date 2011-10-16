class AddStyleIdToHotels < ActiveRecord::Migration
  def self.up
    add_column :hotels, :style_id, :integer
  end

  def self.down
    remove_column :hotels, :style_id
  end
end
