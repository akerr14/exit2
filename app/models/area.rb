class Area < ActiveRecord::Base
  belongs_to :city
  has_many :restaurants, :dependent => :nullify
  has_many :hotels, :dependent => :nullify

  validates_presence_of :city_id, :name

end
