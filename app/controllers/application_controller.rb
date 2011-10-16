class ApplicationController < ActionController::Base
  protect_from_forgery

	before_filter :meta_defaults   # set meta tag defaults
	before_filter :get_s3_files

	private  # all methods that follow are private

	 def meta_defaults
    @meta_title = "Sublime Sydney | Luxury & Boutique Hotels | Travel Guide"
    @meta_keywords = "Sydney luxury hotel, Sydney boutique hotel, Sydney luxury accommodation, Sydney boutique accommodation, Sydney luxury travel, Sydney boutique travel, Sydney travel guide"
    @meta_description = "Sublime Sydney is Sydney's ultimate travel guide for luxury hotels, boutique hotels, fine dining & more.  Sydney luxury hotels, Sydney boutique hotels, Sydney luxury travel, Sydney boutique travel."
	 end

	def get_s3_files
		if S3File.first.blank? then # if s3 images not in db then get them
			s3_refresh   # call method in application controller
		end
		@s3files = S3File.last.name
	end


	def s3_refresh
		# create a new S#File record
		@keys = S3File.new

		# get a list of files (keys) from s3
		s3 = Aws::S3.new('AKIAJ6JHR7X5PLY622XQ','oMsGPF+NZhWei4wOD5B8sPvHM6jqxeLicpYWmMO/')
		bucket = s3.bucket('sublimetravel')
		@keys.name = bucket.keys.map(&:to_s)  # get array of filenames and convert each to a string

		# save the record
		@result = @keys.save
	end

end


