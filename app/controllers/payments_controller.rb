class PaymentsController < ApplicationController
  def new
    @order = Order.find_by(id: 1)

  end
end
