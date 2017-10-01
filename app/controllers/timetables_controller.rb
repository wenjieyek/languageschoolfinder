class TimetablesController < ApplicationController

    before_action :confirm_logged_in


  def index

    session[:course_id]=params[:course_id]
    
    @timetables=initialize_grid(Timetable.where(:course_id=>session[:course_id]).order(:day,:start))
    

    
  end

  def show
    @timetable=Timetable.find(params[:id])
  end

   def new
    @timetable=Timetable.new
    
  end


  def create


     @timetable=Timetable.new(timetable_params)
     @timetable.course_id=session[:course_id]
    

    if @timetable.save
    
    flash[:notice] = "Timetable Successfully Added"
    redirect_to(timetables_path(:course_id=>session[:course_id]))

    else
    render('new')
    end


    
  end

 
  def edit
    @timetable=Timetable.find(params[:id])
  end

  def update
     @timetable=Timetable.find(params[:id])
    if @timetable.update_attributes(timetable_params)
      flash[:notice]='Timetable Updated Successfully'
      redirect_to(timetables_path(:course_id=>session[:course_id]))
    else
      render('edit')


    
  end
end

  def delete
    @timetable=Timetable.find(params[:id])
  end

  def destroy
    @timetable=Timetable.find(params[:id])
    @timetable.destroy
    flash[:notice]='Timetable Deleted Successfully'
      redirect_to(timetables_path(:course_id=>session[:course_id]))
    
  end

  private

  def timetable_params

    params.require(:timetable).permit(  :day,
                                        :start,
                                        :end,
                                        

                                       

                                       )

  end


end
