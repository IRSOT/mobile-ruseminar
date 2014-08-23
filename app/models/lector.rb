

class Lector < ActiveRecord::Base
	has_many :seminars

	def self.import(file)
		# print file.path

		CSV.foreach(file.path, { col_sep: ";", headers: "i;id;name;bio;photo"} ) do |row|
			lector = find_by_id(row["id"]) || new

			attributes = row.to_hash
			byebug

			puts(attributes)

			# lector.attributes = attributes
			# lector.save!
		end
	end


end
