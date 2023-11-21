class Location < ApplicationRecord
  has_many :location_amenities
  has_many :amenities, through: :location_amenities
end
