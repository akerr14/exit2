class AddPriceToHotels < ActiveRecord::Migration
  def self.up
    add_column :hotels, :price_to, :integer
  end

  def self.down
    remove_column :hotels, :price_to
  end
end
