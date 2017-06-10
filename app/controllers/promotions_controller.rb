class PromotionsController < ApplicationController
   
   def index
    @promotions=Promotion.where(:school_user_id=>session[:schools_id])

    
  end

  def show
    @promotion=Promotion.find(params[:id])
  end

  def new
    @promotion=Promotion.new
  end

  def create
    @promotion=Promotion.new(promotion_params)
    @promotion.school_user_id=session[:schools_id]
    

    if @promotion.save
    
    flash[:notice] = "Promotion Successfully Added"
    redirect_to(promotions_path)

    else
    render('new')
    end

  end

  def edit
    @promotion=Promotion.find(params[:id])
  end

  def update
    @promotion=Promotion.find(params[:id])
    if @promotion.update_attributes(promotion_params)
      flash[:notice]='Promotion Updated Successfully'
      redirect_to(promotions_path)
    else
      render('edit')



    end

  
    
  end

  def delete
    @promotion=Promotion.find(params[:id])
  end

  def destroy
    @promotion=Promotion.find(params[:id])
    @promotion.destroy
    flash[:notice]='Promotion Deleted Successfully'
      redirect_to(promotions_path)

    
  end


  private

  def promotion_params

    params.require(:promotion).permit(  :name,
                                        :details,
                                        :period,
                                        :attachments,
                                       
                                        

                                       )

  end


end
