json.array!(@images) do |image|
  json.extract! image, :id, :name, :width, :height, :storage, :imageable_id, :imageable_type
  json.url image_url(image, format: :json)
end
