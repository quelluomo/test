Rails.application.routes.draw do


  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  root 'videos#index', as: 'home'
  resources :comments
  resources :video_ratings
  resources :ratings
  resources :videos
  resources :users

  post '/videos/:video_id/comments' => 'comments#create'

  #get '/auth/:provider/callback', to: 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
