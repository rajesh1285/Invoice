json.extract! geocoder, :id, :address, :latitude, :longitude, :created_at, :updated_at
json.url geocoder_url(geocoder, format: :json)
