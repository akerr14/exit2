class CreateReservations < ActiveRecord::Migration
  def self.up
    create_table :reservations do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :reservations
  end
end
