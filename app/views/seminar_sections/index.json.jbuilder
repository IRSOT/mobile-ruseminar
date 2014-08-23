json.array!(@seminar_sections) do |seminar_section|
  json.extract! seminar_section, :id, :section
  json.url seminar_section_url(seminar_section, format: :json)
end
