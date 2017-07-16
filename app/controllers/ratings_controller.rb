class RatingsController < ApplicationController
  
  before_action :user_confirm_logged_in


  def index
    
  end

  def show
    
  end

  def new
    session[:return_to] ||= request.referer
    @rating=Rating.new
    @rating.school_user_id=params[:school_id]
    @rating.user_id=session[:user_id]
      
  end

  def create
    

    @rating=Rating.new(rating_params)

    @rating.school_user_id=session[:inquiry_id]
    @rating.user_id=session[:user_id]




    
    

    if @rating.save
    
    flash[:notice] = "Rating sent, thanks for your rating"
    redirect_to session.delete(:return_to)

    else
    render('new')
    end

  end

  def edit
    
  end

  def update
   
    
  end

  


  private

  def rating_params

    params.require(:rating).permit(     :coursename,
                                        :courses,
                                        :value,
                                        :facilities,
                                        :service,
                                        :activities,
                                        :title,
                                        :comments
                                      

                                       )

  end


end
