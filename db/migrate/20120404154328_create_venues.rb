class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :address_1
      t.string :address_2
      t.string :post_code

      t.timestamps
    end
  end
end
