Rails.application.routes.draw do
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api, defaults: {format: :json} do
  resources :tweets, only:[:new, :create, :update] do 
    member do 
      get 'stats', to: 'tweets#stats'
      post 'like', to: 'tweets#like'
      delete 'dislike', to: 'tweets#destroy'
      post 'retweet', to: 'tweets#retweet'
      post 'quote', to: 'tweets#quote'
      post 'reply', to: 'tweets#create_reply'
      post 'bookmark', to: 'tweets#bookmark'
      patch 'tweets', to: 'tweets#update'
      put 'tweets', to: 'tweets#update'
    end
  end 

  resources :users, only:[:create, :update, :show] do
    member do 
      get 'tweets(/page/:page)', to: 'users#tweets'
      get 'tweets_replies(/page/:page)', to: 'users#tweets_replies'

    end 
  end 
end
end
