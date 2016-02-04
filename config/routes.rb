Ecm::UserArea::Backend::Engine.routes.draw do
  resources :create_default_user_service, only: [:index] do
    get  :invoke, on: :collection
    post :call,   on: :collection
  end
  
  resources :permissions

  resources :roles

  resources :permissions

  resources :roles

  resources :users

  root to: 'home#index'
end
