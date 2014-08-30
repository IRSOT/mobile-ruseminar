json.array!(@seminar_types) do |seminar_type|
  json.extract! seminar_type, :id, :name
  json.url seminar_type_url(seminar_type, format: :json)
end
