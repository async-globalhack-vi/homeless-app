# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :assistance_provider do
    id { rand(100000) }
    name { "Assistance provider #{id}" }
    email { "someone@example.com" }
    street_address { "900 Spruce St." }
    city { "St. Louis" }
    state { "MO" }
    zip { "63102" }
    max_monthly_contribution { "#{500 + rand(1000)}" }
  end
end