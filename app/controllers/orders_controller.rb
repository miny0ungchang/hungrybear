class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def create
    # @menu_items = Menu_items.find(params[:teddy_id])
    restaurant = Restaurant.find(params["restaurantId"])
    puts restaurant.name
    @order  = Order.create!(restaurant: restaurant, user: current_user)

    order_items = JSON.parse(params["orderItems"]).map do |order_item|
      OrderMenuItem.create!(order: @order, quantity: order_item["amount"].to_i, menu_item: MenuItem.find(order_item["menuId"]))
    end
    
    total_amount = 0
    order_items.each do |order_item|
      total_amount += order_item.quantity * order_item.menu_item.price_cents
    end
    
    line_items = order_items.map do |order_item|
      { name: order_item.menu_item.name,
        images: [order_item.menu_item.img_url],
        amount: order_item.menu_item.price_cents,
        currency: 'sgd',
        quantity: order_item.quantity
      }
    end 

    @order.total_order = total_amount
    @order.save
  
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: line_items,
      success_url: order_url(@order),
      cancel_url: order_url(@order)
    )
  
    @order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(@order)
  end
end
