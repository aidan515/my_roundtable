class UsersController < ApplicationController
  before_filter :authorize, only: [:edit, :update]
  def new 
    @user = User.new    
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end
  
  def show
    @user = current_user
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated user profile."
      redirect_to root_url
    else
      render :action => 'edit'
    end
  end
end
