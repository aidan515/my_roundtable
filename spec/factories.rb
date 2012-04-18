Factory.define :user do |f|
  f.sequence(:email) { |n| "foo#{n}@example.com" }
  f.password "secret"
end

Factory.define :roundtable do |f|
  f.topic "Bob Dylan"
  f.number_of_attendees (4)
  f.date Date.new(2012, 5, 12)
  f.time Time.now
end  


  
  