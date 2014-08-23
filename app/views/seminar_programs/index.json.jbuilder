json.array!(@seminar_programs) do |seminar_program|
  json.extract! seminar_program, :id, :ruseminar_id, :program
  json.url seminar_program_url(seminar_program, format: :json)
end
