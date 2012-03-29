class Venue < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation, :image, :address1, :address2, :city, :postcode
  mount_uploader :image, ImageUploader
  has_secure_password
  validates_presence_of :name, :email, :password, :password_confirmation, :image, :address1, :city, :postcode
  before_create { generate_token(:auth_token) }   # will happen for every venue 

  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    VenueMailer.password_reset(self).deliver
  end

  def generate_token(column)                        # Accepts a column from a database
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while Venue.exists?(column => self[column])
  end
end
