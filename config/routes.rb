Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "filter", to: 'bands#filter', as: :filter
  resources :bands  do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create]
end
