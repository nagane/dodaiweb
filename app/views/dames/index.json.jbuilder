json.array!(@dames) do |dame|
  json.extract! dame, :id, :image, :image_content_type
  json.url dame_url(dame, format: :json)
end
