Rails.application.routes.draw do
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'sessions#new'
  resource :session, only: [:new, :create, :destroy]
  resource :users, only: [:new, :create]
end
