Rails.application.routes.draw do
  resources :photos
  # resources :items
  # resources :users

  get '/bags', to: 'bags#index', as: 'bags'
  get '/bags/:id', to: 'bags#show', as: 'bag'
  post '/bags', to: 'bags#create'
  patch '/bags/:id', to: 'bags#update'

  post '/login', to: 'users#login'
  get '/me', to: 'users#me'
  post '/signup', to: 'users#signup'
  delete '/logout', to: 'users#logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
