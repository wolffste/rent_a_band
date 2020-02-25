Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "filter", to: 'bands#filter', as: :filter
  resources :bands do
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
