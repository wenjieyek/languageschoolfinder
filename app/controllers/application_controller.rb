class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

 private

  def confirm_logged_in
  	if session[:schools_id]==0 or session[:schools_id]==nil
  		flash[:notice]="Please log in"
  		redirect_to(access_login_path)
  	end

  
  	
  end

  def user_confirm_logged_in
      if session[:user_id]==0 or session[:user_id]==nil
      flash[:notice]="Please log in"
      redirect_to(users_login_path)
    end
    
  end


  def admin_confirm_logged_in
      if session[:admin_id]==0 or session[:admin_id]==nil
      flash[:notice]="Please log in"
      redirect_to(admins_login_path)
    end
    
  end

  
