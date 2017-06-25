class PublicController < ApplicationController
  def index
  end


  	

  def result


  	@results=SchoolUser.where(:city=>params[:city],:status=>1)
  	#@language=@results.courses.where(:languagetype=>params[:languagetype])  	

  end

    def show

    @school_user=SchoolUser.find(params[:id])

    @courses=@school_user.courses.all
    
  end


end
