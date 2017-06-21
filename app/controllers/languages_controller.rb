class LanguagesController < ApplicationController


	before_action :admin_confirm_logged_in


  def index
    @languages=Language.all

    
  end

 

  def new
    @language=Language.new
  end

  def create
    @language=Language.new(language_params)
    
    

    if @language.save
    
    flash[:notice] = "Language Successfully Added"
    redirect_to(languages_path)

    else
    render('new')
    end

  end

  def edit
    @language=Language.find(params[:id])
  end

  def update
    @language=Language.find(params[:id])
    if @language.update_attributes(language_params)
      flash[:notice]='Language Updated Successfully'
      redirect_to(languages_path)
    else
      render('edit')



    end

  
    
  end

  def delete
    @language=Language.find(params[:id])
  end

  def destroy
    @language=Language.find(params[:id])
    @language.destroy
    flash[:notice]='Language Deleted Successfully'
      redirect_to(languages_path)

    
  end


  private

  def language_params

    params.require(:language).permit(  :language

                                       )

  end


end
