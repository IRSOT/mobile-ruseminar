class SeminarProgram < ActiveRecord::Base
	belongs_to :seminar

	def self.import(file)
		# print file.path

		i = 0
		sp_new = 0
		sp_updated = 0

		CSV.foreach(file.path, col_sep: ";", encoding: "UTF-8", quote_char: '"') do |row|
			# lector.save!

			if i > 0 
				sp = self.find_by_ruseminar_id(row[0])
				if !sp
					sp = new
					sp.ruseminar_id = row[0]
					sp_new += 1
				else
					sp_updated += 1
				end

				# byebug

				sp.program = row[2].to_s.gsub(/@@/, ';')
				sp.save
			else
				if !row[2].include? "Программа"
					return Array.new()
				end
			end
			i += 1
		end
		return [sp_new, sp_updated]
	end
end
