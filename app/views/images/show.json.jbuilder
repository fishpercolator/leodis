json.extract! @image, :id, :title, :description, :url, :created_at, :updated_at
json.tags @image.tags.map(&:name)
