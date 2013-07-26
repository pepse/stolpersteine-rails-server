json.array!(@locations) do |location|
  json.extract! location, :bezirk, :ortsteil, :adresse
  json.url location_url(location, format: :json)
end
