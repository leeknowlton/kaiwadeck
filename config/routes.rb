Kaiwadeck::Application.routes.draw do
  devise_for :users
  
  authenticated :user do
   root to: 'users#dashboard', as: :authenticated_root
  end

  root :to => 'visitors#home'
  resources :decks

  get '/dashboard', to: 'users#dashboard', as: 'dashboard'
  get '/ktc', to: 'visitors#ktc', as: 'ktc'
end
