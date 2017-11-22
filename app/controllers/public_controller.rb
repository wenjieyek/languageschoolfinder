class PublicController < ApplicationController
  def index
    @areas=Area.joins("INNER JOIN states ON areas.state_id=states.id")

    @most_views_schools=SchoolUser.find_by_sql("SELECT school_users.id,
                                                       school_users.profilepicture,
                                                       school_users.name,
                                                       school_users.city,
                                                       school_users.state,
                                                       COUNT(ahoy_events.properties)
                                                FROM school_users
                                                INNER JOIN ahoy_events 
                                                ON school_users.id = ahoy_events.properties 
                                                WHERE school_users.status=1
                                                GROUP BY properties 
                                                ORDER BY COUNT(ahoy_events.properties) DESC LIMIT 25;")


    @most_ratings_schools=SchoolUser.find_by_sql("SELECT school_users.id,
                                                         school_users.profilepicture,
                                                         school_users.name,
                                                         school_users.city,
                                                         school_users.state,
                                                         AVG(ratings.marks)
                                                    FROM ratings
                                                    INNER JOIN school_users 
                                                    ON ratings.school_user_id = school_users.id 
                                                    WHERE school_users.status=1
                                                    GROUP BY school_user_id
                                                    ORDER BY AVG(ratings.marks) DESC LIMIT 25;")


    @most_bookmarks_schools=SchoolUser.find_by_sql("SELECT school_users.id,
                                                           school_users.profilepicture,
                                                           school_users.name,
                                                           school_users.city,
                                                           school_users.state,
                                                           COUNT(bookmarks.school_user_id)
                                                FROM school_users
                                                INNER JOIN bookmarks 
                                                ON school_users.id = bookmarks.school_user_id 
                                                WHERE school_users.status=1
                                                GROUP BY school_user_id 
                                                ORDER BY COUNT(bookmarks.school_user_id ) DESC LIMIT 25;")


    @new_schools=SchoolUser.order(created_at: :desc).limit(25)
  end


  	

  def result

    @area=params[:city]
    @languagetype=params[:languagetype]
    @results=SchoolUser.joins("INNER JOIN courses 
                                                      ON school_users.id=courses.school_user_id 
                                                      AND courses.languagetype='#{params[:languagetype]}'")
                                                      .where(:city=>params[:city],:status=>1).distinct

  	
    @results_grid = initialize_grid(SchoolUser.joins("INNER JOIN courses 
                                                      ON school_users.id=courses.school_user_id 
                                                      AND courses.languagetype='#{params[:languagetype]}'")
                                                      .where(:city=>params[:city],:status=>1).distinct)


   

  end

    def show

    

    @school_user=SchoolUser.find(params[:id])

    ahoy.track "Get Current View and ID", @school_user.id


    @newsfeeds=@school_user.newsfeeds.all
    @school_attachments=@school_user.school_attachments.all.order(:priority)
    @courses=@school_user.courses.all
    @teachers=@school_user.teachers.all
    

    @promotions=@school_user.promotions.where('end > ?', Date.today)
    
    @certificates=@school_user.certificates.all
    @ratings=@school_user.ratings.all
    
  end


end
