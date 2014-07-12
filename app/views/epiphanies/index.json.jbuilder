json.array!(@epiphanies) do |epiphany|
  json.extract! epiphany, :id, :body
  json.url epiphany_url(epiphany, format: :json)
end
