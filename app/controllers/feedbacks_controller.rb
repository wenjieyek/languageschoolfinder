class FeedbacksController < ApplicationController

  before_action :admin_confirm_logged_in,:except=>[:new,:create]
  


  def index
    @feedbacks=Feedback.all

    #@feedbacks=Feedback.all
  end

  def show
    @feedback=Feedback.find(params[:id])
  end

  def new
    session[:return_to] ||= request.referer
    @feedback=Feedback.new
  end

  def create
    @feedback=Feedback.new(feedback_params)
    
    

    if @feedback.save
    
    flash[:notice] = "Feedback sent, admin will reply soon"
    redirect_to session.delete(:return_to)

    else
    render('new')
    end

  end

  def edit
    @feedback=Feedback.find(params[:id])
  end

  def update
    @feedback=Feedback.find(params[:id])
    if @feedback.update_attributes(feedback_params)
      flash[:notice]='Feedback Updated Successfully'
      redirect_to(feedbacks_path)
    else
      render('edit')



    end

  
    
  end

  


  private

  def feedback_params

    params.require(:feedback).permit(     :name,
                                        :email,
                                        :phonenumber,
                                        :title,
                                        :details,
                                      

                                       )

  end


end
