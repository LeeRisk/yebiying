json.array!(@albums) do |album|
  json.extract! album, :id, :description
  json.url album_url(album, format: :json)
end
