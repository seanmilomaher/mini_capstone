Rails.application.routes.draw do
  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/products' => 'products#index'
    get '/products/:id' => 'products#show'
    'products#second_product_action'
    # get '/single_product_query_path' => 'products#product_query_action'
  end
end