class InquiriesController < ApplicationController

  before_action :confirm_logged_in,:except=>[:new,:create]


 def index
    @inquiries=Inquiry.where(:school_user_id=>session[:schools_id])

   
  end

  def show
    @inquiry=Inquiry.find(params[:id])
  end

  def new
    session[:return_to] ||= request.referer
    @inquiry=Inquiry.new
  end

  def create
    @inquiry=Inquiry.new(inquiry_params)

    @inquiry.school_user_id=session[:inquiry_id]
    
    

    if @inquiry.save
    
    flash[:notice] = "Inquiry sent, school will reply soon"
    session.delete(:inquiry_id)
    redirect_to session.delete(:return_to)

    else
    render('new')
    end

  end

  def edit
    @inquiry=Inquiry.find(params[:id])
  end

  def update
    @inquiry=Inquiry.find(params[:id])
    if @inquiry.update_attributes(inquiry_params)
      flash[:notice]='Inquiry Updated Successfully'
      redirect_to(inquirys_path)
    else
      render('edit')



    end

  
    
  end

  


  private

  def inquiry_params

    params.require(:inquiry).permit(     :name,
                                        :email,
                                        :course,
                                        :title,
                                        :details,
                                        

                                       )

  end


end
