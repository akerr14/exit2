class AddCategoryToHotels < ActiveRecord::Migration
  def self.up
    add_column :hotels, :category_id, :integer
  end

  def self.down
    remove_column :hotels, :category_id
  end
end
