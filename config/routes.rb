Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'users/show'
  resources :rooms
  resources :bookings

  root to: 'pages#index'
  get '/all_rooms', to: 'pages#rooms'
  devise_for :users
  resources :users, :only => [:show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
