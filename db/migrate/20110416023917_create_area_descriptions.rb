class CreateAreaDescriptions < ActiveRecord::Migration
  def self.up
    create_table :area_descriptions do |t|
      t.integer :area_id
      t.string :short_desc
      t.text :desc
      t.integer :release_id

      t.timestamps
    end
  end

  def self.down
    drop_table :area_descriptions
  end
end
