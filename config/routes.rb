Ecm::UserArea::Backend::Engine.routes.draw do
  resources :create_default_user_service, only: [:index] do
    get  :invoke, on: :collection
    post :call,   on: :collection
  end
  
  backend_resources :users do
    get :autocomplete, on: :collection
  end

  resource :current_user, only: [:show]
  
  root to: 'home#index'
end
