Kaiwadeck::Application.routes.draw do
  devise_for :users
  root :to => 'decks#index'
  resources :decks
end
