class AddFieldsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :genre_id, :integer
    add_column :restaurants, :ambiance_id, :integer
    add_column :restaurants, :notes, :text
  end
end
