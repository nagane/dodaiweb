json.array!(@dames) do |dame|
  json.extract! dame, :id, :name, :image
  json.url dame_url(dame, format: :json)
end
