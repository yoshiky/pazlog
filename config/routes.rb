Rails.application.routes.draw do
  resources :products
  resources :monsters, except: :show
  resources :dungeons, except: :show
  resources :dungeon_histories, except: :show

  namespace :api, { format: 'json' }do
    resources :gacha_histories, only: :create
  end
  namespace :stub, { format: 'json' }do
    resources :gacha_histories, only: :create do
      post :success, on: :collection
      post :internal_server_error, on: :collection
      post :not_found, on: :collection
    end
  end
end
