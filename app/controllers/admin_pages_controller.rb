class AdminPagesController < ApplicationController
  def index
  	@lectors = Lector.all
  end
end
