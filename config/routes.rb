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

  # users

  # login
  get "login" => "home#login"
  get "logout" => "home#logout"    
end
