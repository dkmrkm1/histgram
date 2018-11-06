Rails.application.routes.draw do
  # home
  get 'home/index' => "home#index"

  # posts
  root to: 'posts#index'
  get "new" => "posts#new"
  

  # users

end
