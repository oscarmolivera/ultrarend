Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :sys_admins

      root to: "users#index"
    end
  get 'dashboards/index'
  devise_for :users, skip: %i[registration]
  #root 'home#index'
  devise_scope :user do
    root :to => 'devise/sessions#new'
  end
end
