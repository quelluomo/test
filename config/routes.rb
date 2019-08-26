Rails.application.routes.draw do

  root 'application#index', as: 'home'
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :comments
  resources :video_ratings
  resources :ratings
  resources :videos
  resources :users

  #get '/auth/:provider/callback', to: 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
