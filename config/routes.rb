Rails.application.routes.draw do
  get 'posts/index'
  root to: 'home#index'
end
