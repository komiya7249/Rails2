Rails.application.routes.draw do
  get 'reservation/index'
  devise_for :users, controllers: {
    registrations: "logs/registrations"
  }
  get 'rooms/index'

  post 'users/new'
  root to: 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :rooms
  resources :reservations do
    collection do
      post :confirm
      end
    end

  get '/profile', to: 'users#profile'
  get '/account', to: 'users#account'
  get '/profile/edit', to: 'users#edit'
  patch '/profile', to:'users#profile'
  post '/profile', to:'users#profile'
  get '/booking', to:'rooms#booking'
  post '/booking', to:'rooms#booking'
  get '/own', to:'rooms#own'
  get '/result', to:'rooms#result'
  patch '/account', to:'users#account'
end
