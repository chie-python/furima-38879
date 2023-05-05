require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build_stubbed(:item)
  end

  describe '商品出品登録' do
    context '商品出品登録できる場合' do
      it "全ての入力が正しく存在すれば登録できる" do
        expect(@item).to be_valid
      end
    end
    context '商品出品登録できない場合' do
      it "item_nameが空では登録できない" do
        @item.item_name = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Item name can't be blank")
      end
      it "item_descriptionが空では登録できない" do
        @item.item_description = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Item description can't be blank")
      end
      it "item_category_idが空では登録できない" do
        @item.item_category_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Item category can't be blank")
      end
      it "item_category_idが1(---)では登録できない" do
        @item.item_category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Item category can't be blank")
      end
      it "item_condition_idが空では登録できない" do
        @item.item_condition_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Item condition can't be blank")
      end
      it "item_condition_idが1(---)では登録できない" do
        @item.item_condition_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Item condition can't be blank")
      end
      it "shipping_charge_idが空では登録できない" do
        @item.shipping_charge_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Shipping charge can't be blank")
      end
      it "shipping_charge_idが1(---)では登録できない" do
        @item.shipping_charge_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Shipping charge can't be blank")
      end
      it "ship_area_idが空では登録できない" do
        @item.ship_area_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Ship area can't be blank")
      end
      it "ship_area_idが1(---)では登録できない" do
        @item.ship_area_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Ship area can't be blank")
      end
      it "ship_day_idが空では登録できない" do
        @item.ship_day_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Ship day can't be blank")
      end
      it "ship_day_idが1(---)では登録できない" do
        @item.ship_day_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Ship day can't be blank")
      end
      it "priceが空では登録できない" do
        @item.price = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
      it "priceが300未満では登録できない" do
        @item.price = 299
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be greater than or equal to 300")
      end
      it "priceが9,999,999を超えると登録できない" do
        @item.price = 10000000
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be less than or equal to 9999999")
      end
      it "priceが全角数字では登録できない" do
        @item.price = "３００"
        @item.valid?
        expect(@item.errors.full_messages).to include("Price is not a number")
      end
      it "price英数混合では登録できない" do
        @item.price = "300yen"
        @item.valid?
        expect(@item.errors.full_messages).to include("Price is not a number")
      end
      it "画像が１枚もない場合は登録できない" do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it "userが紐付いていなければ出品できない" do
        @item.user_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('User must exist', "User can't be blank")
      end
    end
  end
end
