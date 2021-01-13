class Api::ProductsController < ApplicationController
  def show_all_products_action
    @all_products = Product.all
    render 'show_all_products.json.jb'
  end
end
