Rails.application.routes.draw do
  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/products' => 'products#index'
    get '/products/:id' => 'products#show'
    post '/products' => 'products#create'
  end
end