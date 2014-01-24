Kaiwadeck::Application.routes.draw do
  devise_for :users
  
  authenticated :user do
   root to: 'users#dashboard', as: :authenticated_root
  end

  root :to => 'decks#index'
  resources :decks

  get '/dashboard', to: 'users#dashboard', as: 'dashboard'
end
