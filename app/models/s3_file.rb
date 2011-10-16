class S3File < ActiveRecord::Base
	serialize :name        # enables array to be stored
end
