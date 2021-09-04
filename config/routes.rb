Rails.application.routes.draw do
  root to: 'page#homepage'
  devise_for :users
end
