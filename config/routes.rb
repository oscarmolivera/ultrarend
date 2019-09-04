Rails.application.routes.draw do
  get 'dashboards/index'
  devise_for :users
  #root 'home#index'
  devise_scope :user do
    root :to => 'devise/sessions#new'
  end
end
