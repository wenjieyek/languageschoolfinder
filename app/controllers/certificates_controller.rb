class CertificatesController < ApplicationController
  before_action :confirm_logged_in
   
   def index
    @certificates=initialize_grid(Certificate.where(:school_user_id=>session[:schools_id]))

    
  end

  def show
    @certificate=Certificate.find(params[:id])
  end

  def new
    @certificate=Certificate.new
  end

  def create
    @certificate=Certificate.new(certificate_params)
    @certificate.school_user_id=session[:schools_id]
    

    if @certificate.save
    
    flash[:notice] = "Certificate Successfully Added"
    redirect_to(certificates_path)

    else
    render('new')
    end

  end

  def edit
    @certificate=Certificate.find(params[:id])
  end

  def update
    @certificate=Certificate.find(params[:id])
    if @certificate.update_attributes(certificate_params)
      flash[:notice]='Certificate Updated Successfully'
      redirect_to(certificate_path(@certificate.id))
    else
      render('edit')



    end

  
    
  end

  def delete
    @certificate=Certificate.find(params[:id])
  end

  def destroy
    @certificate=Certificate.find(params[:id])
    @certificate.destroy
    flash[:notice]='Certificate Deleted Successfully'
      redirect_to(certificates_path)

    
  end


  private

  def certificate_params

    params.require(:certificate).permit(:title,
                                        :details,
                                        :attachment
                                       
                                        

                                       )

  end


end
