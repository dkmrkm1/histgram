Rails.application.routes.draw do
  
  # home
  get 'home/index' => "home#index"
  get "about" => "home#about"

  # posts
  root to: 'posts#index'
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "posts/:id" => "posts#show", as: "posts"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/destroy" => "posts#destroy"
  # resources :posts

  # users
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get 'users/index' => "users#index"
  get 'users/:id' => "users#show"

  # login
  get "login" => "home#login"
  get "logout" => "home#logout"    
end
