class OnlineApplicationsController < ApplicationController


  before_action :confirm_logged_in,:except=>[:new,:create]


  def index
    @onlineapplications=initialize_grid(OnlineApplication.where(:school_user_id=>session[:schools_id]))
  end

  def show
    @onlineapplication=OnlineApplication.find(params[:id])
  end

  def new
    session[:return_to] ||= request.referer
    @onlineapplication=OnlineApplication.new
    @onlineapplication.course=params[:course_name]
  end

  def create
    @onlineapplication=OnlineApplication.new(onlineapplication_params)

    @onlineapplication.school_user_id=session[:inquiry_id]
    
    if @onlineapplication.save
    flash[:notice] = "Online application is submitted, school will reply soon"
    session.delete(:inquiry_id)
    redirect_to session.delete(:return_to)
    else
    render('new')
    end

  end

  def edit
    @onlineapplication=OnlineApplication.find(params[:id])
  end

  def update
    @onlineapplication=OnlineApplication.find(params[:id])
    if @onlineapplication.update_attributes(onlineapplication_params)
      flash[:notice]='Online Application Updated Successfully'
      redirect_to(onlineapplications_path)
    else
      render('edit')

    end
  end

    def reply
      session[:return_to] ||= request.referer
      @onlineapplication=OnlineApplication.find(params[:id])
      @message=params[:message]
      @school=SchoolUser.find(session[:schools_id])

      SchoolMailer.reply_application(@onlineapplication,@message,@school).deliver

      if @onlineapplication.update_attributes(:status=>"1")
      flash[:notice]='The Application Has Been Replied'
      redirect_to session.delete(:return_to)


    end
    
  end



  


  private

  def onlineapplication_params

    params.require(:online_application).permit(
                      										  :course,
                      										  :intakedate,
                                        	  :profilepicture,
                                        	  :email,
                                        	  :name,
                                        	  :ic,
                                        	  :gender,
                                        	  :nationality,
                                        	  :age,
                                        	  :phonenumber,
                                        	  :address
                                        
                                       )

  end


end
