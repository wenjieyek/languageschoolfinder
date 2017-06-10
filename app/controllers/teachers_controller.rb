class TeachersController < ApplicationController
  
  def index
    @teachers=Teacher.where(:school_user_id=>session[:schools_id])

    
  end

  def show
    @teacher=Teacher.find(params[:id])
  end

  def new
    @teacher=Teacher.new
  end

  def create
    @teacher=Teacher.new(teacher_params)
    @teacher.school_user_id=session[:schools_id]
    

    if @teacher.save
    
    flash[:notice] = "Teacher Successfully Added"
    redirect_to(teachers_path)

    else
    render('new')
    end

  end

  def edit
    @teacher=Teacher.find(params[:id])
  end

  def update
    @teacher=Teacher.find(params[:id])
    if @teacher.update_attributes(teacher_params)
      flash[:notice]='Teacher Updated Successfully'
      redirect_to(teachers_path)
    else
      render('edit')



    end

  
    
  end

  def delete
    @teacher=Teacher.find(params[:id])
  end

  def destroy
    @teacher=Teacher.find(params[:id])
    @teacher.destroy
    flash[:notice]='Teacher Deleted Successfully'
      redirect_to(teachers_path)

    
  end


  private

  def teacher_params

    params.require(:teacher).permit(    :name,
                                        :languagetype,
                                        :details,
                                        :profilepicture,
                                        :resumes,
                                        

                                       )

  end


end
