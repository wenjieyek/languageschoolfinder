class PublicController < ApplicationController
  def index
  end


  	

  def result


  	#@results=SchoolUser.where(:city=>params[:city],:status=>1)
    @results_grid = initialize_grid(SchoolUser.where(:city=>params[:city],:status=>1))
  	#@language=@results.courses.where(:languagetype=>params[:languagetype])  	

  end

    def show

    @school_user=SchoolUser.find(params[:id])


    @newsfeeds=@school_user.newsfeeds.all
    @school_attachments=@school_user.school_attachments.all
    @courses=@school_user.courses.all
    @teachers=@school_user.teachers.all
    

    @promotions=@school_user.promotions.where('end > ?', Date.today)
    
    @certificates=@school_user.certificates.all
    @ratings=@school_user.ratings.all
    
  end


end
