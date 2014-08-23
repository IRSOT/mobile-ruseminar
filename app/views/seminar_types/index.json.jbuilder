json.array!(@seminar_types) do |seminar_type|
  json.extract! seminar_type, :id, :type
  json.url seminar_type_url(seminar_type, format: :json)
end
