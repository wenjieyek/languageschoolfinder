class PublicController < ApplicationController
  def index
    @areas=Area.joins("INNER JOIN states ON areas.state_id=states.id")
  end


  	

  def result

    @area=params[:city]
    @languagetype=params[:languagetype]
    @results=SchoolUser.joins("LEFT JOIN courses 
                                                      ON school_users.id=courses.school_user_id 
                                                      AND courses.languagetype='#{params[:languagetype]}'")
                                                      .where(:city=>params[:city],:status=>1).distinct

  	
    @results_grid = initialize_grid(SchoolUser.joins("LEFT JOIN courses 
                                                      ON school_users.id=courses.school_user_id 
                                                      AND courses.languagetype='#{params[:languagetype]}'")
                                                      .where(:city=>params[:city],:status=>1).distinct)

    
    #@results_grid = initialize_grid(SchoolUser.where(:city=>params[:city],:status=>1))
    #@results=SchoolUser.where(:city=>params[:city],:status=>1)
  	#@language=@results.courses.where(:languagetype=>params[:languagetype])  	

  end

    def show

    @school_user=SchoolUser.find(params[:id])


    @newsfeeds=@school_user.newsfeeds.all
    @school_attachments=@school_user.school_attachments.all.order(:priority)
    @courses=@school_user.courses.all
    @teachers=@school_user.teachers.all
    

    @promotions=@school_user.promotions.where('end > ?', Date.today)
    
    @certificates=@school_user.certificates.all
    @ratings=@school_user.ratings.all
    
  end


end
