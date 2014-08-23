class Seminar < ActiveRecord::Base
	has_many :lectors
	has_one :seminar_type
	has_one :seminar_section
	has_one :seminar_program
end
