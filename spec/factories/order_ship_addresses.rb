FactoryBot.define do
  factory :order_ship_address do

    Faker::Config.locale = :ja

    ship_postal_code {Faker::Address.postcode}
    ship_area_id {Faker::Number.between(from: 2, to: 48)}
    ship_city {Faker::Address.city}
    ship_house_number {Faker::Address.street_address}
    ship_phone_number {Faker::Number.decimal_part(digits: 11)}
    token {Faker::Internet.password(min_length: 20, max_length: 32) }
    
  end
end
