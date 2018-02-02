class Place < ApplicationRecord
	
	attr_accessor :address

  geocoded_by :address
  reverse_geocoded_by :latitude, :longitude

  after_validation -> {
    self.address = self.address
    geocode
  }, if: ->(obj){ obj.address.present? and obj.address != obj.address }

  after_validation :reverse_geocode, unless: ->(obj) { obj.address.present? },
                   if: ->(obj){ obj.latitude.present? and obj.latitude_changed? and obj.longitude.present? and obj.longitude_changed? }


end
