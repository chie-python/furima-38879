class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :item_category
  belongs_to :item_condition
  belongs_to :shipping_charge
  belongs_to :ship_area
  belongs_to :ship_day
  belongs_to :user
  has_one_attached :image

  validates :item_name, presence: true
  validates :item_description, presence: true
  validates :item_category_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :item_condition_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :shipping_charge_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :ship_area_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :ship_day_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999 }
  validates :image, presence: true
end
