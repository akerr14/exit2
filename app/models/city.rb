class City < ActiveRecord::Base
  has_many :areas,  :dependent => :nullify
  has_many :restaurants, :dependent => :nullify
  has_many :hotels, :dependent => :nullify

  validates_presence_of  :name
end
