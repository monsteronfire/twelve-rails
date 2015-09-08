Rails.application.routes.draw do
  resources :posts do
    member do
      get "like", to: "posts#upvote"
      get "dislike", to: "posts#downvote"
    end
    resources :comments
  end
  
  devise_for :users

  root 'posts#index'
end
