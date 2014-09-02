class Seminar < ActiveRecord::Base
	# has_many :lectors
	belongs_to :seminar_type
	belongs_to :seminar_section
	# has_one :seminar_program, as: :program

	validates :lectors, presence: true

	def self.import(file)
		# print file.path

		i = 0
		seminars_new = 0
		seminars_updated = 0

		CSV.foreach(file.path, col_sep: ";", encoding: "UTF-8", quote_char: '"') do |row|
			# lector.save!

			if i > 0 
				seminar = self.find_by_ruseminar_id(row[1])
				if !seminar
					seminar = new
					seminar.ruseminar_id = row[1]
					seminars_new += 1
				else
					seminars_updated += 1
				end

				seminar.title = row[2].strip

				# seminar type & section

				type = SeminarType.find_by_name(row[3])
				if !type
					type = SeminarType.new()
					type.name = row[3]
					type.save!
				end

				section = SeminarSection.find_by_name(row[4])
				if !section
					section = SeminarSection.new()
					section.name = row[4]
					section.save!
				end

				seminar.seminar_type = type
				seminar.seminar_section = section
				# byebug

				seminar.date_start = row[5]
				seminar.date_end = row[6]

				seminar.online = row[7] == "yes" ? 1 : 0

				# TODO: check field for emptyness
				seminar.lectors = row[12]
				seminar.url = row[13]
				seminar.price1 = row[14]
				seminar.price2 = row[15]
				if !seminar.price1
					seminar.price1 = 0
				end
				if !seminar.price2 
					seminar.price2 = 0
				end

				seminar.save
			end
			i += 1
		end
		return [seminars_new, seminars_updated]
	end

	def program
		SeminarProgram.find_by_ruseminar_id(ruseminar_id).program
	end

end
