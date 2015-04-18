Rails.application.routes.draw do


  resources :post_images

  resources :posts

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :orders

  resources :line_items

  resources :carts

  resources :themes do 
  	  resources :pictures
  end

  get "/shop" => "pictures#shop"
  get "/about" => "statics#about"

  root "themes#index"
end
