Rails.application.routes.draw do
  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/all_products_path' => 'products#show_all_products_action'
  end
end