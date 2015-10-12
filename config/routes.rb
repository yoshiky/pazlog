Rails.application.routes.draw do
  resources :products
  resources :monsters, except: :show
  resources :dungeons, except: :show
end
