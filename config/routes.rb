Rails.application.routes.draw do
  devise_for :users
root 'home#index'

  resources :posts
  
#  get '/posts', to: 'posts#index', as: 'crazy_post'
  get "api/v1/weather" => "api/v1/weather#get_weather"
end
