Rails.application.routes.draw do
  resources :events
  resources :event_types
  resources :groups
  devise_for :users

  root to: 'static_pages#home'
  
end
