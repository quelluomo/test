Rails.application.routes.draw do

  root 'application#index', as: 'home'
  devise_for :users
  resources :comments
  resources :video_ratings
  resources :ratings
  resources :videos

  #get '/auth/:provider/callback', to: 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
