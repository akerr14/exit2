class CreateS3Files < ActiveRecord::Migration
  def self.up
    create_table :s3_files do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :s3_files
  end
end
