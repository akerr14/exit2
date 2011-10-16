class Cuisine < ActiveRecord::Base
  has_many :restaurants, :dependent => :nullify

  validates_presence_of :name

end
