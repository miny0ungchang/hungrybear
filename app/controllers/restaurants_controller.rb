class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all

    @markers = @restaurants.geocoded.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        info_window: render_to_string(partial: "info_window", locals: { restaurant: restaurant })
      }
    end
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
      @restaurants = Restaurant.near(@parameter, 5)

      @markers = @restaurants.geocoded.map do |restaurant|
        {
          lat: restaurant.latitude,
          lng: restaurant.longitude,
          info_window: render_to_string(partial: "info_window", locals: { restaurant: restaurant })
        }
      end
    end
  end
end
