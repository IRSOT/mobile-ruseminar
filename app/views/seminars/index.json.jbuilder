json.array!(@seminars) do |seminar|
  json.extract! seminar, :id, :ruseminar_id, :title, :seminar_type_id, :seminar_section_id, :date_start, :date_end, :online, :lectors, :url, :price1, :price2, :program
end
