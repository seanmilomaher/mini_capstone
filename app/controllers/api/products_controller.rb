class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render 'index.json.jb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def product_query_action
    key = params["product"]
    #key = "Truth"
    @product = Product.find_by(id: key.to_i)
    render 'product_query.json.jb'
  end

end