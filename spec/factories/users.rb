# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    id { rand(100000) }
    email { "someone#{id}@example.com" }
    password_hash { "somebighash" }
  end
end
