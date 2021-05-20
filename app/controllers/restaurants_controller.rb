class RestaurantsController < ApplicationController
  def index
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @menu_items = MenuItem.where(restaurant_id: params[:id])
    @order = Order.new
  end
end
