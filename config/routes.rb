Rails.application.routes.draw do

  root 'tweets#index'
  resources :tweets
  resources :users
  devise_for :users

  #===不要のためコメントアウト===
  # get 'tweets/new'
  # get 'tweets/index'
  # get 'tweets/show'
  # get 'tweets/create'
  # get 'users/index'
  # get 'users/show'
  #==============================
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end