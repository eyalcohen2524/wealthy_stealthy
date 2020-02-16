Rails.application.routes.draw do
  get 'me', to: 'dashboards#show'
  devise_for :users
  root to: 'pages#home'
  resources :packages
  resources :rentals, only: [:create, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
