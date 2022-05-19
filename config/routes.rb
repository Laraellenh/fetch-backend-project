Rails.application.routes.draw do
  resources :transactions, only: [:index, :show, :create]
  resources :payers
  resources :users, only: [:create, :index, :show, :balance, :spending]
  get '/points', to: "transactions#pointspend" 

  # spend points route (payer, timetime, points)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
