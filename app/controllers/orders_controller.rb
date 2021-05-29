class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def create
    # @menu_items = Menu_items.find(params[:teddy_id])
    puts params
    @order  = Order.create!(total_order: 200)
  
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        total_order: 200,
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )
  
    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end
end
