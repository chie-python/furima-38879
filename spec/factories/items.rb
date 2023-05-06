FactoryBot.define do
  factory :item do
    item_name {Faker::Name.name}
    item_description {Faker::Lorem.sentence}
    item_category_id {Faker::Number.between(from: 2, to: 11) }
    item_condition_id {Faker::Number.between(from: 2, to: 7) }
    shipping_charge_id {Faker::Number.between(from: 2, to: 3) }
    ship_area_id {Faker::Number.between(from: 2, to: 48) }
    ship_day_id {Faker::Number.between(from: 2, to: 4) }
    price {Faker::Number.between(from: 300, to: 9999999) }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
