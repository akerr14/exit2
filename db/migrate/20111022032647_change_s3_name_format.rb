class ChangeS3NameFormat < ActiveRecord::Migration
 def self.up
   change_column :s3_files, :name, :text, :limit => nil
  end

  def self.down
   change_column :s3_files, :name, :string
  end
end
