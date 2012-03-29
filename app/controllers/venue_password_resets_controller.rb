class VenuePasswordResetsController < ApplicationController
  def new
  end
  
  def create
    venue = Venue.find_by_email(params[:email])
    if venue
      venue.send_password_reset 
      redirect_to root_url, :notice => "Email sent with password reset instructions."
    else
      redirect_to root_url, :alert => "You have not signed up with My Roundtable."
    end
  end
  
  def edit
    @venue = Venue.find_by_password_reset_token!(params[:id])
  end
  
  def update
    @venue = Venue.find_by_password_reset_token!(params[:id])
    if @venue.password_reset_sent_at < 2.hours.ago
      redirect_to new_password_reset_path, :alert => "Password reset has expired."
    elsif @venue.update_attributes(params[:venue])
      redirect_to root_url, :notice => "Password has been reset!"
    else
      render :edit
    end 
  end
end
