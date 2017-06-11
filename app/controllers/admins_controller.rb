class AdminsController < ApplicationController

  before_action :admin_confirm_logged_in,:except=>[:login,:attempt_login,:logout]

  def login
  end

  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user=Admin.where(:username=>params[:username]).first
      if found_user
        authorized_user=found_user.authenticate(params[:password])
      end
    end

    if authorized_user
      session[:admin_id]=authorized_user.id
      session[:admin_name]=authorized_user.username
      flash[:notice]="You are now logged in."
      redirect_to(admins_menu_path)
    else
      flash.now[:notice]="Invalid email/password combination."
      render("login")
    end
    
  end

  def logout

    session[:admin_id]=0
    session[:admin_name]=nil
    flash[:notice]="Logged out"
    redirect_to(admins_login_path)
    
  end



  def menu
    @admin=Admin.find(session[:admin_id])

  end

  def index
    @admins=Admin.all
  end

  def show
    @admin=Admin.find(params[:id])
  end

  def new
    @admin=Admin.new
  end

  def create
    @admin=Admin.new(admin_params)
    if @admin.save
      flash[:notice]='New account created successfully'
      
      redirect_to(admins_path)
    else
      render('new')
    end


  end

  def edit
    @admin=Admin.find(params[:id])
  end

  def update
    @admin=Admin.find(params[:id])
    if @admin.update_attributes(admin_params)
      flash[:notice]='User profile updated successfully'

      redirect_to(admins_path)
    else
      render('edit')

    end

    def delete
      @admin=Admin.find(params[:id])
    end

    def destroy
      @admin=Admin.find(params[:id])
      @admin.destroy
      flash[:notice]='Admin Account Deleted Successfully'
      redirect_to(admins_path)


    end

  end



    private

    def admin_params

     params.require(:admin).permit(:username,
      :password,

      )

   end



 end


