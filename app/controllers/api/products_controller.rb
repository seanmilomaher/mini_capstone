class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    if params[:sort_order] == "desc"
      @products = @products.order(price: :desc)
    elsif params[:sort_order] == "asc"
      @products = @products.order(price: :asc)
    else params[:discount]
      @products = @products.where("price < ?", 10)
    end
    render 'index.json.jb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image_url: params[:image_url],
      quantity: params[:quantity]
    )
    if @product.save
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description,
    @product.image_url = params[:image_url] || @product.image_url
    @product.quantity = params[:quantity] || @product.quantity

    if @product.save
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "All pieces of Exodia the Forbidden One assembled. You win."}
  end

end