class Restaurant < ActiveRecord::Base
  belongs_to :city
  belongs_to :area
  belongs_to :cuisine
  belongs_to :reservation
  belongs_to :kid

  validates_presence_of   :city_id, :area_id, :name


end
