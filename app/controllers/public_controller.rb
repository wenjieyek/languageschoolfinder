class PublicController < ApplicationController
  def index
  end


  	

  def result


  	@results=SchoolUser.where(:city=>params[:city],:status=>1)
  	#@language=search.courses.where(:languagetype=>params[:languagetype])  	

  end


end
