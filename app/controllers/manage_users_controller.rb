class ManageUsersController < ApplicationController
  

 
  def index
    @manage_users=initialize_grid(User)
  end

  def show
    @manage_user=User.find(params[:id])
  end

  def edit
    @manage_user=User.find(params[:id])
  end

  def update

    @manage_user=User.find(params[:id])
      if @manage_user.update_attributes(manage_user_params)
        flash[:notice]='User manage successfully'
        redirect_to(manage_user_path(@manage_user.id))
      else
        render('edit')

      end

    
  end


  private

  def manage_user_params
    params.require(:user).permit(:status)
    
  end



end
