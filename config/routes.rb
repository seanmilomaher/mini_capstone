Rails.application.routes.draw do
  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/all_products_path' => 'products#show_all_products_action'
    get 'single_product_path' => 'products#show_single_product_action'
  end
end