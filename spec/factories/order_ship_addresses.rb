FactoryBot.define do
  factory :order_ship_address do

    Faker::Config.locale = :ja
    user_id {Faker::Number.non_zero_digit}
    item_id {Faker::Number.non_zero_digit}
    ship_postal_code {Faker::Address.postcode}
    ship_area_id {Faker::Number.between(from: 2, to: 48)}
    ship_city {Faker::Address.city}
    ship_house_number {Faker::Address.street_address}
    ship_phone_number {Faker::Number.decimal_part(digits: 11)}

  end
end
