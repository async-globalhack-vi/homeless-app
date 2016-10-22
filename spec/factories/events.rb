# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    id {rand(100000)}
    street_address { "900 Spruce St." }
    city           { "St. Louis" }
    state          { "MO" }
    zip            { "63102" }
    event_type     { "foreclosure" }
    date_of_event  { DateTime.now - 1.day }
  end
end
