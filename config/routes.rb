Rails.application.routes.draw do
  # home
  get 'home/index' => "home#index"

  # posts
  root to: 'posts#index'
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"

  # users

end
