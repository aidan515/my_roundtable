class VenueMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.venue_mailer.password_reset.subject
  #
  def password_reset(venue)
    @venue = venue
    mail :to => venue.email, :subject => "Password Reset"

  end
end
