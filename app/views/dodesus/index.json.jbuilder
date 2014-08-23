json.array!(@dodesus) do |dodesu|
  json.extract! dodesu, :id, :name, :image
  json.url dodesu_url(dodesu, format: :json)
end
