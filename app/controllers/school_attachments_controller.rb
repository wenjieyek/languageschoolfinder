class SchoolAttachmentsController < ApplicationController
   before_action :confirm_logged_in

  
  def index
    @school_attachments=initialize_grid(SchoolAttachment.order(:priority).where(:school_user_id=>session[:schools_id]))

    
  end

  def show
    @school_attachment=SchoolAttachment.find(params[:id])
  end

  def new
    @school_attachment=SchoolAttachment.new
  end

  def create
    @school_attachment=SchoolAttachment.new(school_attachment_params)
    @school_attachment.school_user_id=session[:schools_id]
    

    if @school_attachment.save
    
    flash[:notice] = "School Attachment Successfully Added"
    redirect_to(school_attachments_path)

    else
    render('new')
    end

  end

  def edit
    @school_attachment=SchoolAttachment.find(params[:id])
  end

  def update
    @school_attachment=SchoolAttachment.find(params[:id])
    if @school_attachment.update_attributes(school_attachment_params)
      flash[:notice]='School Attachment Updated Successfully'
      redirect_to(school_attachments_path)
    else
      render('edit')



    end

  
    
  end

  def delete
    @school_attachment=SchoolAttachment.find(params[:id])
  end

  def destroy
    @school_attachment=SchoolAttachment.find(params[:id])
    @school_attachment.destroy
    flash[:notice]='School Attachment Deleted Successfully'
      redirect_to(school_attachments_path)

    
  end


  private

  def school_attachment_params

    params.require(:school_attachment).permit(
                                        :directory,
                                        :details,
                                        :priority
                                        
                                        

                                       )

  end


end
