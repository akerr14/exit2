class CreateHotelsInterests < ActiveRecord::Migration
  def self.up
    create_table :hotels_interests, :id => false do |t|
      t.integer :hotel_id
      t.integer :interest_id
    end
  end

  def self.down
    drop_table :hotels_interests
	end
end
