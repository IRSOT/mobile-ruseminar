class AdminPagesController < ApplicationController
  def index
  	@lectors = Lector.count
  	@programs = SeminarProgram.count
  	@seminars = Seminar.count
  	@types = SeminarType.count
  	@sections = SeminarSection.count

  	@imports = Import.last(10)
  end
end
