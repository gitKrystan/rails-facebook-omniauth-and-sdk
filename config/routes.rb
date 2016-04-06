Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "home#index"
  get '/facebook', to: 'facebook#new'
  post '/facebook', to: 'facebook#create'
end
