class AccessController < ApplicationController

	before_action :confirm_logged_in,:except=>[:login,:attempt_login,:logout]
  def menu
  	#display text and links
  end

  def login
  	#login form
  end

  def attempt_login
  	if params[:email].present? && params[:password].present?
  		found_user=SchoolUser.where(:email=>params[:email]).first
  		if found_user
  			authorized_user=found_user.authenticate(params[:password])
  		end
  	end

  	if authorized_user
  		session[:schools_id]=authorized_user.id
  		session[:schools_name]=authorized_user.name
  		flash[:notice]="You are now logged in."
  		redirect_to(school_users_path)
  	else
  		flash.now[:notice]="Invalid email/password combination."
  		render("login")
  	end
  	
  end

  def logout
  	session[:schools_id]=nil
  	flash[:notice]="Logged out"
  	redirect_to(access_login_path)

  	
  end

 



end

