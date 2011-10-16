class AddDescToAreas < ActiveRecord::Migration
  def self.up
    add_column :areas, :short_desc, :text
    add_column :areas, :desc, :text
  end

  def self.down
    remove_column :areas, :desc
    remove_column :areas, :short_desc
  end
end
