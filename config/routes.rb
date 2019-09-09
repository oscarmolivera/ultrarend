Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :sys_admins
      resources :empleados
      resources :trabajadors
      resources :aux_contables
      resources :jefe_areas
      resources :jefe_contables
      resources :companies
      resources :departments
      resources :branch_offices

      root to: "users#index"
    end
  get 'dashboards/index'
  devise_for :users, skip: %i[registration]
  #root 'home#index'
  devise_scope :user do
    root :to => 'devise/sessions#new'
  end
end
