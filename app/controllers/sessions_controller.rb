class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
    	if params[:session][:remember_me]
    		cookies.permanent[:auth_token]= user.auth_token   #create a permanent cookie
    	else
    		cookies[:auth_token]= user.auth_token	
    	end
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end
  end
  
  def destroy
  	cookies.delete(:auth_token)
   # session[:user_id] = nil
    redirect_to root_url, notice: "Logged out"
  end
end
