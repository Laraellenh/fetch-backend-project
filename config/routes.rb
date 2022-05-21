Rails.application.routes.draw do
  resources :transactions, only: [:index, :show, :create]
  resources :payers, only: [:index, :show, :create]
  resources :users, only: [:create, :index, :show, :balance, :spending]
  get '/points', to: "transactions#spend" 

  # spend points route (payer, timetime, points)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
