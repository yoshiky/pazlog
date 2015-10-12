Rails.application.routes.draw do
  resources :products
  resources :monsters
  resources :dungeons, except: :show
end
