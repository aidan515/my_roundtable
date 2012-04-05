class Venue < ActiveRecord::Base
has_secure_password

attr_accessible :name, :email, :password, :password_confirmation, :address_1, :address_2, :post_code
validates_uniqueness_of :email
validates_presence_of :name, :email, :password, :address_1, :address_2, :post_code
end
