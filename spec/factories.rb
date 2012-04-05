FactoryGirl.define do
  factory :user do |f|
  f.sequence(:email) { |n| "foo#{n}@example.com" }
  f.password "secret"
end
end
FactoryGirl.define do
  factory :venue do |f|
  f.name "Foobar"
  f.sequence(:email) { |n| "oof#{n}example.com"}
  f.password "secret"
  f.address_1 "Foo"
  f.address_2 "Bar"
  f.post_code "000000"
end
end