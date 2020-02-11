Rails.application.routes.draw do
  get 'billings/new'
  resources :rooms
  resources :bookings
  root to: 'pages#index'
  get '/all_rooms', to: 'pages#rooms'
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
