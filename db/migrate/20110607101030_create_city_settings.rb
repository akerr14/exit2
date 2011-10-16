class CreateCitySettings < ActiveRecord::Migration
  def self.up
    create_table :city_settings do |t|
      t.string :name
      t.integer :sort

      t.timestamps
    end
  end

  def self.down
    drop_table :city_settings
  end
end
