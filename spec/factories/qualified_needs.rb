# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :qualified_need do
    id { rand(100000) }
    street_address { "900 Spruce St." }
    city { "St. Louis" }
    state { "MO" }
    zip { "63102" }
    deadline { DateTime.now + 20.days }
    phone { "3145551212" }
    point_of_contact { "Jimmy Contact" }
    total_needed { "#{200 + rand(300)}" }
  end
end
