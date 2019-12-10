Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'


  resources :users
  root 'users#index'
  post "create_user", to: "users#create_user", as: "create_user"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
