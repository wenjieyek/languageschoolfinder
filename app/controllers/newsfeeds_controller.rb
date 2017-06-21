class NewsfeedsController < ApplicationController
  before_action :confirm_logged_in
   
   def index
    @newsfeeds=Newsfeed.where(:school_user_id=>session[:schools_id])

    
  end

  def show
    @newsfeed=Newsfeed.find(params[:id])
  end

  def new
    @newsfeed=Newsfeed.new
  end

  def create
    @newsfeed=Newsfeed.new(newsfeed_params)
    @newsfeed.school_user_id=session[:schools_id]
    

    if @newsfeed.save
    
    flash[:notice] = "Newsfeed Successfully Added"
    redirect_to(newsfeeds_path)

    else
    render('new')
    end

  end

  def edit
    @newsfeed=Newsfeed.find(params[:id])
  end

  def update
    @newsfeed=Newsfeed.find(params[:id])
    if @newsfeed.update_attributes(newsfeed_params)
      flash[:notice]='Newsfeed Updated Successfully'
      redirect_to(newsfeeds_path)
    else
      render('edit')



    end

  
    
  end

  def delete
    @newsfeed=Newsfeed.find(params[:id])
  end

  def destroy
    @newsfeed=Newsfeed.find(params[:id])
    @newsfeed.destroy
    flash[:notice]='Newsfeed Deleted Successfully'
      redirect_to(newsfeeds_path)

    
  end


  private

  def newsfeed_params

    params.require(:newsfeed).permit(   :title,
                                        :details,
                                       
                                        

                                       )

  end


end