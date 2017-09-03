class AreasController < ApplicationController

	before_action :admin_confirm_logged_in


  def index

      @areas = initialize_grid(Area, include: :state)
  end

  def new
  	@area=Area.new
  end


  def create
  	@area=Area.new(area_params)
    

    if @area.save
    
    flash[:notice] = "Area Saved"
    redirect_to(areas_path)

    else
    render('new')
    end

  end

  def edit
  	@area=Area.find(params[:id])
  end

  def update

  	 @area=Area.find(params[:id])
    if @area.update_attributes(area_params)
      flash[:notice]='Area Update Successfully'
      redirect_to(areas_path)
    else
      render('edit')



    end

  end

  def delete
    @area=Area.find(params[:id])
  end

  def destroy
    @area=Area.find(params[:id])
    @area.destroy
    flash[:notice]='Area Deleted Successfully'
      redirect_to(areas_path)

    
  end


  private

  def area_params

    params.require(:area).permit(     :areaname,
                                        :state_id
  
                                       )

  end



end
