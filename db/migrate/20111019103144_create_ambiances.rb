class CreateAmbiances < ActiveRecord::Migration
  def change
    create_table :ambiances do |t|
      t.string :name
      t.integer :sort

      t.timestamps
    end
  end
end
