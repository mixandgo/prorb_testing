FactoryBot.define do
  factory :address do
    street { "Main Str. 1" }
    city { "San Francisco" }
    country { "USA" }
    zip { "94103" }
    user
  end
end
