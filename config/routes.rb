Rails.application.routes.draw do


  resources :themes do 
  	  resources :pictures
  end

  get "/shop" => "pictures#shop"
end
