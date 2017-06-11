class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

 private

  def confirm_logged_in
  	if session[:schools_id]==0
  		flash[:notice]="Please log in"
  		redirect_to(access_login_path)
  	end

  
  	
  end

  def user_confirm_logged_in
      if session[:user_id]==0
      flash[:notice]="Please log in"
      redirect_to(users_login_path)
    end
    
  end

  
