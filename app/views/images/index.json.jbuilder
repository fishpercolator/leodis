json.array!(@images) do |image|
  json.extract! image, :id, :title, :description, :url
  json.url image_url(image, format: :json)
end
