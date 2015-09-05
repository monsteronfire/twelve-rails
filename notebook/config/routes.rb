Rails.application.routes.draw do
  get 'welcome/index'

  resources :notes

  devise_for :users
  
  root 'welcome#index'
end
