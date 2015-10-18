Rails.application.routes.draw do
  get 'welcome/index'

  resources :posts do
    member do
      get "like", to: "posts#upvote"
      get "dislike", to: "posts#downvote"
    end
    resources :comments
  end
  
  devise_for :users

  authenticated :user do
    root "posts#index", as: "authenticated_root"
  end

  root 'welcome#index'
end
