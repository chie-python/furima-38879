class OrdersController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :set_item, only: [:index, :create]

  def index
    @order_ship_address = OrderShipAddress.new
  end

  def create
    @order_ship_address = OrderShipAddress.new(order_params)
    if @order_ship_address.valid?
      @order_ship_address.save
      return redirect_to root_path
    else
      render 'index'
    end
  end

  private

  def order_params
    params.require(:order_ship_address).permit(:ship_postal_code, :ship_area_id, :ship_city, :ship_house_number, :ship_building_name, :ship_phone_number).merge(user_id: current_user.id, item_id: params[:item_id])
  end

  def set_item
    @item = Item.find(params[:item_id])
  end
end
