class CreateSojournSettings < ActiveRecord::Migration
  def self.up
    create_table :sojourn_settings do |t|
      t.string :name
      t.integer :sort

      t.timestamps
    end
  end

  def self.down
    drop_table :sojourn_settings
  end
end
