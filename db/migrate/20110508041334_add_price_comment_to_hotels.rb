class AddPriceCommentToHotels < ActiveRecord::Migration
  def self.up
    add_column :hotels, :price_comment, :string
  end

  def self.down
    remove_column :hotels, :price_comment
  end
end
