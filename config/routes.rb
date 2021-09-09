Rails.application.routes.draw do
  resources :meetings
  resources :schedules
  resources :audit_logs, except: [:new, :edit, :destory]
  
  
  namespace :admin do
    resources :users
    resources :admin_users
    resources :posts

    root to: "users#index"
  end

  resources :posts do
    member do
      get :approve
    end
  end


  devise_for :users, skip: [:registrations]
  root to: 'page#homepage'
end
