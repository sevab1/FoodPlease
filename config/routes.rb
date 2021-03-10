Rails.application.routes.draw do
  

  resources :products

  get 'cards/show'
  resources :products

  resources :shops, only:[:index, :show]
  resources :order_items
  resource :cards, only:[:show]



  root 'shops#index'

end
