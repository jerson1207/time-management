Rails.application.routes.draw do
  resources :posts
  root to: 'page#homepage'
  devise_for :users
end
