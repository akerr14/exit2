class Restaurant < ActiveRecord::Base
  belongs_to :city
  belongs_to :area
  belongs_to :cuisine
  belongs_to :reservation
  belongs_to :kid
	belongs_to :ambiance
	belongs_to :genre

  validates_presence_of   :city_id, :area_id, :name


end
