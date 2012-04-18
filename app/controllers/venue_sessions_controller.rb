class VenueSessionsController < ApplicationController

  def new
  end

  def create
    venue = Venue.find_by_email(params[:venue_session][:email])
    if venue && venue.authenticate(params[:venue_session][:password])
    	if params[:venue_session][:remember_me]
    		cookies.permanent[:venue_auth_token]= venue.venue_auth_token   #create a permanent cookie
    	else
    		cookies[:venue_auth_token]= venue.venue_auth_token	
    	end
      redirect_to show_venue_path, notice: "Logged in!"
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
  	cookies.delete(:venue_auth_token)
    redirect_to root_url, notice: "Logged out"
  end
end
