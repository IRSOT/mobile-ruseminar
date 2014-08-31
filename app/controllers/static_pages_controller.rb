class StaticPagesController < ApplicationController
  def home
  end

  def contacts
  end

  def allseminarstype
  	@term = {id: 99, name: "Все мероприятия"}

  	respond_to do |format|
  		format.html
	  	format.json { render json: @term }
  	end
  end

end
