class ManageSchoolsController < ApplicationController
  
 def index
    @manage_schools=SchoolUser.all
  end

  def show
    @manage_school=SchoolUser.find(params[:id])
  end

  def edit
    @manage_school=SchoolUser.find(params[:id])
  end

  def update

    @manage_school=SchoolUser.find(params[:id])
      if @manage_school.update_attributes(manage_school_params)
        flash[:notice]='School user manage successfully'
        redirect_to(manage_school_path(@manage_school.id))
      else
        render('edit')

      end

    
  end


  private

  def manage_school_params
    params.require(:school_user).permit(:status)
    
  end
end
