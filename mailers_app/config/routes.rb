Rails.application.routes.draw do
  devise_for :users
  root "products#index"
  resources :products
  
  require 'sidekiq/web'
   mount Sidekiq::Web => '/sidekiq'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
