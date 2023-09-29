Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :tweets, only:[:new, :create, :update] do 
    member do 
      get 'stats', to: 'tweets#stats'
      post 'like', to: 'tweets#liked'
      delete 'dislike', to: 'tweets#disliked'
      post 'retweet', to: 'tweets#retweet'
      post 'quote', to: 'tweets#create_quote_tweet'
      post 'reply', to: 'tweets#create_reply'
      post 'bookmark', to: 'tweets#bookmarked'
    end
  end 

  resources :users, only:[:create, :update, :show] do
    member do 
      get 'tweets(/page/:page)', to: 'users#tweets'
      get 'tweets_replies(/page/:page)', to: 'users#tweets_replies'

    end 
  end 


end
