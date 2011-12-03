class Hotel < ActiveRecord::Base
  belongs_to :city
  belongs_to :area
	belongs_to :city_setting
	belongs_to :category
	belongs_to :style
	has_and_belongs_to_many :sojourn_settings
	has_and_belongs_to_many :interests
  validates_presence_of   :city_id, :area_id, :name

	geocoded_by :address   # can also be an IP address
	after_validation :geocode          # auto-fetch coordinates


	def self.search(search)
    if !search.blank?
      # return search list
      where('lower(hotels.name) like ?', "%#{search}%")
    else
      # return complete data set as a scope
      scoped
    end
	end




end
