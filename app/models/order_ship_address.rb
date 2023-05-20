class OrderShipAddress
  include ActiveModel::Model
  attr_accessor :ship_postal_code, :ship_area_id, :ship_city, :ship_house_number, :ship_building_name, :ship_phone_number, :user_id, :item_id, :token


  with_options presence: true do
    validates :user_id
    validates :item_id
    validates :ship_postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :ship_area_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :ship_city
    validates :ship_house_number
    validates :ship_phone_number, format: { with: /\A[0-9]{10,11}\z/, message: 'is invalid' }
    validates :token
  end

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    ShipAddress.create(ship_postal_code: ship_postal_code, ship_area_id: ship_area_id, ship_city: ship_city, ship_house_number: ship_house_number, ship_building_name: ship_building_name, ship_phone_number: ship_phone_number, order_id: order.id)
  end

end