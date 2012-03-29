class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.string :image
      t.string :address1
      t.string :address2
      t.string :city
      t.string :postcode

      t.timestamps
    end
  end
end
