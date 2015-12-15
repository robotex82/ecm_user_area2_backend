Ecm::UserArea::Backend::Engine.routes.draw do
  resources :users

  root to: 'home#index'
end
