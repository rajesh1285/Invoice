Rails.application.routes.draw do
  

  root 'pages#index'
   resources :bank_accounts, only: [:index, :show]

    namespace :api do
      namespace :v1 do
       post "bank_accounts/transaction", to: "bank_accounts#transaction"
      end
    end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
