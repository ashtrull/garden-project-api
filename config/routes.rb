# frozen_string_literal: true
Rails.application.routes.draw do
  # resources :plants, only: [:index]
  resources :gardens
  resources :users
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get '/plants' => 'plants#index'
  resources :users, only: [:index, :show]
end
