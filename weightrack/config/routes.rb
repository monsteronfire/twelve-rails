Rails.application.routes.draw do
  
  devise_for :users
  resources :workouts do
    resources :exercises
  end

  resources :weights

  # resources :profiles, only: [:edit]

  root 'workouts#index'
end
