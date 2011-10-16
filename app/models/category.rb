class Category < ActiveRecord::Base
	has_many :hotels, :dependent => :nullify
end
