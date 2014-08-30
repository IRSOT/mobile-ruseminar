json.array!(@seminars) do |seminar|
  json.extract! seminar, :id, :ruseminar_id, :title, :type, :section, :date_start, :date_end, :online, :lectors, :url, :price1, :price2
  json.url seminar_url(seminar, format: :json)
end
