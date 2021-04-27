Rails.application.routes.draw do
  resources :photos
  # resources :items
  # resources :users

  get '/bags', to: 'bags#index', as: 'bags'
  get '/bags/:id', to: 'bags#show', as: 'bag'
  post '/bags', to: 'bags#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
