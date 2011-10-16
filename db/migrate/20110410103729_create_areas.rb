class CreateAreas < ActiveRecord::Migration
  def self.up
    create_table :areas do |t|
      t.integer :city_id
      t.string :name
      t.integer :sort
      t.integer :release_id
      t.timestamps
    end
  end

  def self.down
    drop_table :areas
  end
end
