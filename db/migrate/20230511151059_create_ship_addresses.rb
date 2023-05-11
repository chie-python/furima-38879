class CreateShipAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :ship_addresses do |t|
      t.string    :ship_postal_code,    null: false
      t.integer   :ship_area_id,        null: false
      t.string    :ship_city,           null: false
      t.string    :ship_house_number,   null: false
      t.string    :ship_building_name
      t.string    :ship_phone_number,   null: false
      t.references    :order, null: false, foreign_key: true
      t.timestamps
    end
  end
end
