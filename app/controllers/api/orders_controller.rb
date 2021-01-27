class Api::OrdersController < ApplicationController

  def create
    @order = Order.new(
    user_id: current_user[:id],
    product_id: params[:product_id],
    quantity: params[:quantity]
    )
    if current_user
      render 'show.json.jb'
    else
      render json: {}
    end
  end

end