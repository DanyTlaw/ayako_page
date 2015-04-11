Rails.application.routes.draw do


  resources :orders

  resources :line_items

  resources :carts

  resources :themes do 
  	  resources :pictures
  end

  get "/shop" => "pictures#shop"
end
