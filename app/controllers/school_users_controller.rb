class SchoolUsersController < ApplicationController
  
  before_action :confirm_logged_in,:except=>[:new,:create]

  


  def index

  end

  def show
    
  end

   def new
      @school_user=SchoolUser.new
  end

  def create
      @school_user=SchoolUser.new(school_user_params)
      if @school_user.save
        flash[:notice]='New account created successfully'
        session[:schools_id]=@school_user.id
        session[:schools_name]=@school_user.name
        redirect_to(access_menu_path)
      else
          render('new')
      end


  end

  def edit
  end

  def update
  	
  end


   private

  def school_user_params

    params.require(:school_user).permit(:name,
                                        :phonenumber,
                                        :password,
                                        :email,
                                        :website,
                                        :address,
                                        :description,
                                        :transportation,
                                        :profilepicture)

  end

end
