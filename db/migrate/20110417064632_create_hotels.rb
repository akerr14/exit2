class CreateHotels < ActiveRecord::Migration
  def self.up
    create_table :hotels do |t|
      t.integer :city_id, :default => 1
      t.integer :area_id
      t.string :name
      t.string :style
      t.string :short_desc
      t.text :desc
      t.string :address
      t.integer :map_id
      t.string :phone
      t.string :email
      t.string :web
      t.string :rooms
      t.integer :price
      t.string :inclusions, :default => 'Rates exclude breakfast.  Rates include a full cooked breakfast.  Rates include all meals, open bar with premium wine and spirits, in-suite bar, selected Kangaroo Island experiences and island airport transfers.'
      t.string :check_in
      t.text :amenities, :default => 'Complimentary WiFi, flatscreen TV, DVD player, minibar, Bulgari toiletries, terrace with day-bed. Selected suites have private plunge pools.'
      t.text :facilities, :default => 'Lounge with cosy fireplaces, guest computer with broadband, library of CDs, DVDs, books and board games, gardens, parking, mountain bikes. Spa.'
      t.text :restaurants
      t.string :bars
      t.string :kids
      t.text :ideal_for
      t.text :think_twice
      t.integer :sort
      t.integer :release_id

      t.timestamps
    end
  end

  def self.down
    drop_table :hotels
  end
end
