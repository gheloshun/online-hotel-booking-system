Rails.application.routes.draw do
  resources :rooms
  root to: 'pages#index'
  get '/all_rooms', to: 'pages#rooms'
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
