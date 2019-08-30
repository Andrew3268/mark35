Rails.application.routes.draw do
  
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  resources :posts do
    member do 
      get "like", to: "posts#upvote"
      get "dislike", to: "posts#downvote"
    end
    resources :comments
  end
  root 'posts#index'

  resources :buys 
  # root 'buys#index'
  # get '/buys/user_page', to: 'buys#user_page', as: 'user_page'
  get 'buyusers/user_page'


end
