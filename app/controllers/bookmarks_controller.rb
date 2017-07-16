class BookmarksController < ApplicationController

	before_action :user_confirm_logged_in


  def index
  	@bookmarks=Bookmark.where(:user_id=>session[:user_id])
  end


  def create

  	session[:return_to] ||= request.referer
  	@school_user=SchoolUser.find(session[:inquiry_id])


  	@bookmark=Bookmark.new
  	@bookmark.school_user_id=session[:inquiry_id]
  	@bookmark.user_id=session[:user_id]
  	@bookmark.school_name=@school_user.name

  	 if @bookmark.save
    
    flash[:notice] = "School is bookmarked"
    redirect_to session.delete(:return_to)

    else
    render('new')

  		
  	end
  end



  def destroy

  	session[:return_to] ||= request.referer

  	@bookmark=Bookmark.find(params[:id])
    @bookmark.destroy

    flash[:notice]='Bookmark Deleted Successfully'
      
      redirect_to session.delete(:return_to)
  	
  end
end
