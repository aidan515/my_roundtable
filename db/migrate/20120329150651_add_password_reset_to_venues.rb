class AddPasswordResetToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :password_reset_token, :string

    add_column :venues, :password_reset_sent_at, :datetime

  end
end
