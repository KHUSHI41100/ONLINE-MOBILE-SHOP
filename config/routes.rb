Rails.application.routes.draw do
  get 'items/index'
  get 'items/show'
  get 'ends/home'
  get 'cards/show'
  get 'shops/show'

   

  devise_for :users
  get "sign_up" , to: "registrationss#new"
  post "sign_up" , to: "registrationss#create"
  get "sign_in" , to: "sessions#new"
  post "sign_in" , to: "sessions#create"

  delete "logout", to:"sessions#destroy"

  resources :products
  resources :shops, only:[:index,:show]
  resources :items, only:[:index,:show]
  resources :order_items
  resource :cards,only:[:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  #root "shops#index"
  root "sessions#index"
end
