class ApplicationController < ActionController::Base
  protect_from_forgery
  
private

  def current_user
    @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if (cookies[:auth_token])
  end
  helper_method :current_user
  
  def current_venue
    @current_venue ||=Venue.find_by_venue_auth_token!(cookies[:venue_auth_token]) if (cookies[:venue_auth_token])
  end
  helper_method :current_venue
  
  def authorize
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
  end
  
  def venue_authorize
    redirect_to root_url, alert: "Not authorized" if current_venue.nil?
  end
end
