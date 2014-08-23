json.array!(@lectors) do |lector|
  json.extract! lector, :id, :first_name, :father_name, :last_name, :bio, :photo_url
  json.url lector_url(lector, format: :json)
end
