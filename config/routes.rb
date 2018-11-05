Rails.application.routes.draw do
  # home
  root to: 'home#index'

  # posts
  get 'posts/index' => 'posts#index'
end
