Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 
  root "users#index" #rootとはルートパス（今回だとhttp://localhost:3000/）を設定
  resources :users
  
end
