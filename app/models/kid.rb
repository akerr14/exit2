class Kid < ActiveRecord::Base
  has_many :restaurants, :dependent => :nullify
end
