class RemoveAuthTokenFromVenues < ActiveRecord::Migration
  def up
    remove_column :venues, :auth_token
      end

  def down
    add_column :venues, :auth_token, :string
  end
end
