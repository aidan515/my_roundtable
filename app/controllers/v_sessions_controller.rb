class VSessionsController < ApplicationController
  def new
  end
  
  def create
    venue = Venue.find_by_email(params[:email])
    if venue && venue.authenticate(params[:password])
      session[:venue_id] = venue.id
      redirect_to root_url, notice: "Logged in"
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end
  end
  
  def destroy
    session[:venue_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
  
end