class CoursesController < ApplicationController
  before_action :confirm_logged_in

  

  



  
  def index
    @courses=initialize_grid(Course.where(:school_user_id=>session[:schools_id]))

    #@courses=Course.all
  end

  def show
    @course=Course.find(params[:id])
  end

  def new
    @course=Course.new
  end

  def create
    @course=Course.new(course_params)
    @course.school_user_id=session[:schools_id]
    

    if @course.save
    
    flash[:notice] = "Course Successfully Added"
    redirect_to(courses_path)

    else
    render('new')
    end

  end

  def edit
    @course=Course.find(params[:id])
  end

  def update
    @course=Course.find(params[:id])
    if @course.update_attributes(course_params)
      flash[:notice]='Course Updated Successfully'
      redirect_to(courses_path)
    else
      render('edit')



    end

  
    
  end

  def delete
    @course=Course.find(params[:id])
  end

  def destroy
    @course=Course.find(params[:id])
    @course.destroy
    flash[:notice]='Course Deleted Successfully'
      redirect_to(courses_path)

    
  end


  private

  def course_params

    params.require(:course).permit(     :name,
                                        :languagetype,
                                        :details,
                                        :price,
                                        :time,
                                        :attachments,

                                       )

  end


end
