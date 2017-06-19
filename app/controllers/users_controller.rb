class UsersController < ApplicationController

  before_action :user_confirm_logged_in,:except=>[:login,:attempt_login,:logout,:new,:create]


  def login
  end

  def attempt_login
    if params[:email].present? && params[:password].present?
      found_user=User.where(:email=>params[:email]).first
      if found_user
        authorized_user=found_user.authenticate(params[:password])
      end
    end

    if authorized_user
      session[:user_id]=authorized_user.id
      session[:user_name]=authorized_user.username
      flash[:notice]="You are now logged in."
      redirect_to(users_menu_path)
    else
      flash.now[:notice]="Invalid email/password combination."
      render("login")
    end
    
  end

  def logout
    session[:user_id]=0
    session[:user_name]=nil
    flash[:notice]="Logged out"
    redirect_to(users_login_path)

    
  end

  def menu
  end

  def index
  end

  def new
      @user=User.new
  end

  def create
      @user=User.new(user_params)
      if @user.save
        flash[:notice]='New account created successfully'
        session[:user_id]=@user.id
        session[:user_name]=@user.username
        redirect_to(users_menu_path)
      else
          render('new')
      end


  end

   def edit
    @user=User.find(session[:user_id])
  end

  def update
    @user=User.find(session[:user_id])
      if @user.update_attributes(user_params)
        flash[:notice]='User profile updated successfully'
        session[:user_id]=@user.id
        session[:user_name]=@user.username
        redirect_to(users_menu_path)
      else
        render('edit')

      end
  end


  private

  def user_params

           params.require(:user).permit(:username,
                                        :password,
                                        :password_confirmation,
                                        :email,
                                        :address,
                                       )

  end

end
