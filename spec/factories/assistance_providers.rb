# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  money = "#{500 + rand(1000)}"
  factory :assistance_provider do
    id { rand(100000) }
    user
    name { "Assistance provider #{id}" }
    email { "someone@example.com" }
    street_address { "900 Spruce St." }
    city { "St. Louis" }
    state { "MO" }
    zip { "63102" }
    max_monthly_contribution { money }
    available_monthly_contribution { money }
  end
end