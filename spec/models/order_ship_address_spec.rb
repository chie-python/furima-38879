require 'rails_helper'

RSpec.describe OrderShipAddress, type: :model do
  before do
    @order = FactoryBot.build(:order_ship_address)
  end

  describe '購入内容の登録' do
    context '購入内容が保存できるとき' do
      it '全ての値が入力されていれば登録できる' do
        expect(@order).to be_valid
      end
      it '電話番号が10桁でも登録できる' do
        @order.user_id = 1234567890
        expect(@order).to be_valid
      end
    end
    context '購入内容が保存できないとき' do
      it 'user_idが空白では登録できない' do
        @order.user_id = nil
        @order.valid?
        expect(@order.errors.full_messages).to include("User can't be blank")
      end
      it 'item_idが空白では登録できない' do
        @order.item_id = nil
        @order.valid?
        expect(@order.errors.full_messages).to include("Item can't be blank")
      end
      it '郵便番号が空白では登録できない' do
        @order.ship_postal_code = nil
        @order.valid?
        expect(@order.errors.full_messages).to include("Ship postal code can't be blank", "Ship postal code is invalid. Include hyphen(-)")
      end
      it '郵便番号が000-0000の形式でないと登録できない' do
        @order.ship_postal_code = 1234567
        @order.valid?
        expect(@order.errors.full_messages).to include("Ship postal code is invalid. Include hyphen(-)")
      end
      it '都道府県idが空白では登録できない' do
        @order.ship_area_id = nil
        @order.valid?
        expect(@order.errors.full_messages).to include("Ship area can't be blank", "Ship area can't be blank")
      end
      it '都道府県idが0(---)では登録できない' do
        @order.ship_area_id = 0
        @order.valid?
        expect(@order.errors.full_messages).to include("Ship area can't be blank")
      end
      it '市区町村が空白では登録できない' do
        @order.ship_city = nil
        @order.valid?
        expect(@order.errors.full_messages).to include("Ship city can't be blank")
      end
      it '番地が空白では登録できない' do
        @order.ship_house_number = nil
        @order.valid?
        expect(@order.errors.full_messages).to include("Ship house number can't be blank")
      end
      it '電話番号が空白では登録できない' do
        @order.ship_phone_number = nil
        @order.valid?
        expect(@order.errors.full_messages).to include("Ship phone number can't be blank", "Ship phone number is invalid")
      end
      it '電話番号が11桁より多いと登録できない' do
        @order.ship_phone_number = 123456781234
        @order.valid?
        expect(@order.errors.full_messages).to include("Ship phone number is invalid")
      end
      it '電話番号が10桁より少ないと登録できない' do
        @order.ship_phone_number = 123456789
        @order.valid?
        expect(@order.errors.full_messages).to include("Ship phone number is invalid")
      end
      it '電話番号にハイフンがあると登録できない' do
        @order.ship_phone_number = 123-4567-8912
        @order.valid?
        expect(@order.errors.full_messages).to include("Ship phone number is invalid")
      end
      it 'tokenが空だと登録できない' do
        @order.token = nil
        @order.valid?
        expect(@order.errors.full_messages).to include("Token can't be blank")
      end
    end
  end
end
