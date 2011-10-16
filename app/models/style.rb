class Style < ActiveRecord::Base
	has_many :hotels, :dependent => :nullify

end
