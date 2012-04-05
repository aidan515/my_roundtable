class VenuesController < ApplicationController
  def new
    @venue = Venue.new
  end
  
  def create
    @venue = Venue.new(params[:venue])
    if @venue.save
      session[:venue_id] = @venue.id
      redirect_to root_url, notice: "Thank you for signing up"
    else
      render "new"
    end
  end
end
