class S3FilesController < ApplicationController
  def refresh

		# should only be one record list keys (which is a serialised array
		# so if one exists then destory it
		keys = S3File.first
		if !keys.blank? then
			keys.destroy
		end

		s3_refresh   # call method in application controller to get new keys and add to model

	end
end
