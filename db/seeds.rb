# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Location.create(
  name: "Grand Tree",
  local_name: "Gurando Tree",
  location_type: "Mall",
  longitude: 35.57365382177756,
  latitude: 139.66029565591887,
  country: "Japan",
  city: "Kawasaki",
  street_address: "123 City Tower",
  transport_stop: "Musashi Kosugui",
  description: "A nice mall",
  phone_number: "123-456-789"
)

Amenity.create(
  name: "Hot water"
)

Amenity.create(
  name: "Changing table"
)

LocationAmenity.create(
  location_id: Location.first.id,
  amenity_id: Amenity.first.id,
  payment: true
)

LocationAmenity.create(
  location_id: Location.first.id,
  amenity_id: Amenity.second.id,
  payment: false
)
