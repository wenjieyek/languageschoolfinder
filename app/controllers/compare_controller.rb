class CompareController < ApplicationController
  def index
    session[:return_to] ||= request.referer


    if session[:compare]==nil
      flash[:notice] = "Please Add A School to Compare"
    

    redirect_to session.delete(:return_to)

    end
  

 
  end

  def new
  	session[:return_to] ||= request.referer

 
  	

  	if session[:compare]==nil
  		session[:compare]=Array.new() 
  		session[:compare].push(params[:school_user_id]) 
  		flash[:notice] = "Added A School to Compare List"

  	elsif session[:compare].length==3
  		flash[:notice] = "Compare list is full"
  	else
  		session[:compare].push(params[:school_user_id]) 
  		flash[:notice] = "Added A School to Compare List"


  			
  	end

  	
  		
  		
  	
  	
  	
    redirect_to session.delete(:return_to)
  end

  def delete


    session[:compare].delete(params[:compare_id])

    redirect_to(compare_index_path)
    
  end
end
