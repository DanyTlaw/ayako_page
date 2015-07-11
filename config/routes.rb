Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  resources :posts do
    resources :post_images  
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :orders

  resources :line_items

  resources :carts

  resources :themes do
  	  resources :pictures
  end


  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
  
  get "/shop" => "pictures#shop"
  get "/about" => "statics#about"

  root "themes#index"
end
