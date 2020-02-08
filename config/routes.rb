Rails.application.routes.draw do
  get 'rooms/show'
  root to: 'pages#index'
  devise_for :users

  get '/rooms', to: 'pages#rooms'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
