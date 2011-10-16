class RemoveStyleFromHotels < ActiveRecord::Migration
  def self.up
    remove_column :hotels, :style
  end

  def self.down
    add_column :hotels, :style, :string
  end
end
