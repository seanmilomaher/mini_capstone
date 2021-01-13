class Api::ProductsController < ApplicationController

  def show_all_products_action
    @all_products = Product.all
    render 'show_all_products.json.jb'
  end

  def show_single_product_action
    @single_product = Product.first
    render 'show_single_product.json.jb'
  end

end
