module MailerMacros
  def last_email
    ActionMailer::Base.deliveries.last      #nice method for pulling the last email
  end
  
  def reset_email
    ActionMailer::Base.deliveries = []      #clears email each time we run the test
  end
end