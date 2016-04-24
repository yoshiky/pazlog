Rails.application.routes.draw do
  resources :products
  resources :monsters, except: :show
  resources :dungeons, except: :show
  resources :dungeon_histories, except: :show

  namespace :api, { format: 'json' }do
    resources :gacha_histories, only: :create
  end
  namespace :stub, { format: 'json' }do
    resources :gacha_histories, only: :create
  end
end
