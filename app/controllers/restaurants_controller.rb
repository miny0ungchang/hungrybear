class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @menu_items = MenuItem.where(restaurant_id: params[:id])
    @order = Order.new
    @order_menu_item = OrderMenuItem.new
  end

  def search
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else  
      @parameter = params[:search].strip
      @restaurants = Restaurant.where("address ~* ?", @parameter)
    end   
  end
end
