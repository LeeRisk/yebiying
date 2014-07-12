json.array!(@thanksgivings) do |thanksgiving|
  json.extract! thanksgiving, :id, :name, :body
  json.url thanksgiving_url(thanksgiving, format: :json)
end
