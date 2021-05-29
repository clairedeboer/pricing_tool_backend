Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :photos
  # resources :items
  # resources :users

  get '/bags', to: 'bags#index', as: 'bags'
  get '/bags/:id', to: 'bags#show', as: 'bag'
  post '/bags', to: 'bags#create'
  patch '/bags/:id', to: 'bags#update'

  post '/login', to: 'sessions#create'
  get '/me', to: 'users#me'
  post '/signup', to: 'users#signup'
  delete '/logout', to: 'users#logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
