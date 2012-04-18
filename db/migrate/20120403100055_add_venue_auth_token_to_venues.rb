class AddVenueAuthTokenToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :venue_auth_token, :string

  end
end
