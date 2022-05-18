Rails.application.routes.draw do
  resources :transactions
  resources :payers
  resources :users, only: [:create, :index, :show, :balance]
  # get '/points', to: 'transactions#payer_point_balances'
  get '/subtract', to: 'transactions#payer_point_balances'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
