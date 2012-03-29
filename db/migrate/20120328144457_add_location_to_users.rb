class AddLocationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :location, :string

    add_column :users, :work, :string

    add_column :users, :first_name, :string

    add_column :users, :family_name, :string

  end
end
