class StatesController < ApplicationController


	before_action :admin_confirm_logged_in


  def index
    @states=State.all

    
  end

 

  def new
    @state=State.new
  end

  def create
    @state=State.new(state_params)
    
    

    if @state.save
    
    flash[:notice] = "State Successfully Added"
    redirect_to(states_path)

    else
    render('new')
    end

  end

  def edit
    @state=State.find(params[:id])
  end

  def update
    @state=State.find(params[:id])
    if @state.update_attributes(state_params)
      flash[:notice]='State Updated Successfully'
      redirect_to(states_path)
    else
      render('edit')



    end

  
    
  end

  def delete
    @state=State.find(params[:id])
  end

  def destroy
    @state=State.find(params[:id])
    @state.destroy
    flash[:notice]='State Deleted Successfully'
      redirect_to(states_path)

    
  end


  private

  def state_params

    params.require(:state).permit(  :state

                                       )

  end


end
