class CreateRestaurants < ActiveRecord::Migration
  def self.up
    create_table :restaurants do |t|
      t.integer :city_id, :default => 1
      t.string :name
      t.string :short_desc
      t.text :desc
      t.string :address
      t.integer :area_id
      t.integer :map_id
      t.string :phone
      t.string :email
      t.string :web
      t.integer :cuisine_id
      t.integer :rating
      t.integer :price
      t.string :hours
      t.integer :reservation_id
      t.string :wine
      t.string :seats
      t.string :kid_id
      t.string :vegetarian
      t.integer :sort
      t.integer :release_id

      t.timestamps
    end
  end

  def self.down
    drop_table :restaurants
  end
end
